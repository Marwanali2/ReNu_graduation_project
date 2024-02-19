import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';
import 'package:location/location.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key});

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late CameraPosition initialCameraPosition;
  late LocationService locationService;
  late GoogleMapController googleMapController;
  Location location = Location();
  Set<Marker> markers = {};
  @override
  void initState() {
    LatLng initialLocation = const LatLng(30.78753546661836, 30.99754772107391);
    initialCameraPosition = CameraPosition(
      target: initialLocation,
      zoom: 13.5,
    );
    initMarkers();
    locationService = LocationService();
    locationService.getUserLocation();
    super.initState();
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      zoomControlsEnabled: true,
      markers: markers,
      initialCameraPosition: initialCameraPosition,
      onMapCreated: (controller) {
        googleMapController = controller;
        initMapStyle();
      },
    );
  }

  void initMapStyle() async {
    googleMapController = googleMapController;
    var darkMapStyle = await DefaultAssetBundle.of(context).loadString(
      'assets/map_styles/dark_map_style.json',
    );
    googleMapController.setMapStyle(darkMapStyle);
  }

  void initMarkers() async {
    LocationData userLocation = await location.getLocation();
    Marker userLocationMarker = Marker(
      markerId: const MarkerId(
        'user location marker',
      ),
      position: LatLng(
        userLocation.latitude!,
        userLocation.longitude!,
      ),
    );
    markers.add(userLocationMarker);
  }
}

// zoom properties
// world view 0 => 3
// country view 4 => 6
// city view 10 => 12
// street view 13 => 17
// building view 18 => 20
