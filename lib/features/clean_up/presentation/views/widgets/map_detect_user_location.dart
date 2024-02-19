import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:location/location.dart';

class DetectUserLocation extends StatelessWidget {
  const DetectUserLocation({
    super.key,
    required this.location,
    required this.googleMapController,
  });

  final Location location;
  final GoogleMapController googleMapController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
          child: Center(child: SvgPicture.asset('assets/svg/set_location.svg')),
        ),
      ),
    );
  }
}
