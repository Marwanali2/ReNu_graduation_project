import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/your_location_appbar.dart';

class SelectCompanyView extends StatelessWidget {
  const SelectCompanyView({super.key,required this.placemarks});
final List<Placemark> placemarks;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YourLocationAppBar(placemarks: placemarks,),
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                onTap: () {
                    GoRouter.of(context).push(AppRouter.kCompanyDetails);
                },
                child: const CompaniesContainer(
                  title: 'EcoDelta Recyclers',
                  rating: 4.5,
                  numOfRatings: 30,
                  deliveryDuration: '15 mins',
                  deliveryCost: 35.99,
                  imageAsset: 'assets/images/anosa.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
