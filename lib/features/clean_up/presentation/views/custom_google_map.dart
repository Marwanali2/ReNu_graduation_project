import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/map_confirm_button.dart';
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

    locationService = LocationService();
    locationService.getUserLocationWithServiceAndPermissions();

    super.initState();
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          zoomControlsEnabled: false,
          markers: markers,
          initialCameraPosition: initialCameraPosition,
          onMapCreated: (controller) {
            googleMapController = controller;
            initMapStyle();
            initMarkers();
          },
        ),
        Positioned(
          left: 16.w,
          bottom: 159.h,
          child: GestureDetector(
            onTap: () async {
              LocationData userLocation = await location.getLocation();
              googleMapController
                  .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
                      target: LatLng(
                        userLocation.latitude!,
                        userLocation.longitude!,
                      ),
                      zoom: 15)));
            },
            child: Container(
              width: 44.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: ColorsManager.semiGrey3,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Center(
                  child: SvgPicture.asset('assets/svg/set_location.svg')),
            ),
          ),
        ),
        const ConfirmButton(),
      ],
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
    var customMarker = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), "assets/images/user_location_circle.png");
    Marker userLocationMarker = Marker(
      icon: customMarker,
      markerId: const MarkerId(
        'user location marker',
      ),
      position: LatLng(
        userLocation.latitude!,
        userLocation.longitude!,
      ),
    );
    markers.add(userLocationMarker);
    setState(() {});
  }
}