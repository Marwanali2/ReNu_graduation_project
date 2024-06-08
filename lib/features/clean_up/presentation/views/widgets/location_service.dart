import 'package:location/location.dart';

class LocationService {
  Location location = Location();
  LocationData? _userLocation; // Variable to store user location
  Future<void> checkAndRequestLocationService() async {
    bool isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      bool secondCheckIsServiceEnabled = await location.requestService();
      if (!secondCheckIsServiceEnabled) {
        throw LocationServiceExecption();
      }
    }
  }

  Future<void> checkAndRequestLocationPermission() async {
    PermissionStatus permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.deniedForever) {
      throw LocationPermissionExecption();
    }
    if (permissionStatus == PermissionStatus.denied) {
      PermissionStatus secondCheckPermissionStatus =
          await location.requestPermission();
      if (secondCheckPermissionStatus != PermissionStatus.granted) {
        throw LocationPermissionExecption();
      }
    }
  }

  void getRealTimeLocationData(void Function(LocationData)? onData) async {
    await checkAndRequestLocationService();
    await checkAndRequestLocationPermission();
    location.changeSettings(
      distanceFilter: 2, // كل 2 متر
    );
    location.onLocationChanged.listen(onData);
  }

  Future<LocationData> getUserLocationWithServiceAndPermissions() async {
    await checkAndRequestLocationService();
    await checkAndRequestLocationPermission();
    return await location.getLocation();
  }

  Future<LocationData?> getUserLocation() async {
    try {
      _userLocation = await location.getLocation();
      return _userLocation;
    } catch (e) {
      print('Error getting user location: $e');
      return null;
    }
  }

  LocationData? get userLocation =>
      _userLocation; // Getter to access user location
}

class LocationServiceExecption implements Exception {}

class LocationPermissionExecption implements Exception {}
