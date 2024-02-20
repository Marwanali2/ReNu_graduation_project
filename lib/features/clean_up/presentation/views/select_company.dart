import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/your_location_appbar.dart';

class SelectCompanyView extends StatelessWidget {
  const SelectCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YourLocationAppBar(),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Companies',
                style: TextStyles.font20BlackMeduim,
              ),
              SizedBox(
                height: 16.h,
              ),
              const CompaniesContainer(
                title: 'Garbage Collection',
                rating: 3.5,
                numOfRatings: 25,
                deliveryDuration: '15 mins',
                deliveryCost: 35.49,
                imageAsset: 'assets/images/anosa.jpg',
              ),
              SizedBox(
                height: 16.h,
              ),
              const CompaniesContainer(
                title: 'Collection',
                rating: 4.1,
                numOfRatings: 30,
                deliveryDuration: '20 mins',
                deliveryCost: 22.56,
                imageAsset: 'assets/images/anosa.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
