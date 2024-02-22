import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart';

class YourLocationAppBar extends StatelessWidget {
  YourLocationAppBar({
    super.key,
  });
  LocationService locationService = LocationService();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: const BackContainerWidget(),
        ),
        SizedBox(
          width: 7.w,
        ),
        Text(
          'Your Location',
          style: TextStyles.font16BlackMeduim,
        ),
        SizedBox(
          width: 1.w,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black,
              size: 30.spMax,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
              size: 20.spMax,
            )),
      ],
    );
  }

  /* void getUserLocationFromLocationService() async {
    LocationData? userLocation = await locationService.getUserLocation();
    LatLng userLatLong =
        LatLng(userLocation!.latitude!, userLocation!.longitude!);

    if (userLocation != null) {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          userLocation!.latitude!, userLocation!.longitude!);
      
      print(placemarks[0].street);
      print(
          'User Location: ${userLocation.latitude}, ${userLocation.longitude}');
    } else {
      print('Failed to get user location.');
    }
  } */
}
