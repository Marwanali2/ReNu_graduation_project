import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';


// ignore: must_be_immutable
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
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kFavCompanies);
            },
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
