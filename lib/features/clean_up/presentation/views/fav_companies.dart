import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/common_app_bar.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/companies_list_view.dart';

class FavCompanies extends StatelessWidget {
  const FavCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonAppBar(
                  title: 'Favorite Company',
                  sizedBoxWidth: 7,
                ),
                SizedBox(height: 43.h),
                Text(
                  'Companies',
                  style: TextStyles.font20BlackMeduim,
                ),
                SizedBox(height: 16.h),
                const CompaniesListView(),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
