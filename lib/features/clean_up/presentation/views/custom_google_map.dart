import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key});

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late CameraPosition initialCameraPosition;
  late LocationService locationService;
  late GoogleMapController googleMapController;
  Set<Marker> markers = {};
  @override
  void initState() {
    initialCameraPosition = const CameraPosition(
      target: LatLng(
        31.787146997099,
        35.9883674356408,
      ),
      zoom: 16,
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

  void initMarkers() {
    Marker userLocationMarker = const Marker(
      markerId: MarkerId(
        'user location marker',
      ),
      position: LatLng(
        30.78357146997099,
        30.982883674356408,
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
