import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_container.dart';

class FavCompanies extends StatelessWidget {
  const FavCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 35.h),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.94,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonAppBar(title: 'Favorite Company'),
                SizedBox(height: 43.h),
                Text(
                  'Companies',
                  style: TextStyles.font20BlackMeduim,
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: const CompaniesContainer(
                          title: 'Collection',
                          rating: 4.1,
                          numOfRatings: 30,
                          deliveryDuration: '20 mins',
                          deliveryCost: 22.56,
                          imageAsset: 'assets/images/anosa.jpg',
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
