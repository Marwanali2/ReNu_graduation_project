import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/widgets/vertical_grey_divider.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_details_view_container_details_column.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_details_view_container_name_and_rating.dart';

class CompanyDetailsViewContainer extends StatelessWidget {
  const CompanyDetailsViewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15.w,
      right: 15.w,
      top: 77.h,
      child: Container(
        width: 330.w,
        height: 141.h,
        decoration: BoxDecoration(
          color: ColorsManager.semiGrey6,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.r,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 18.h),
            Row(
              children: [
                SizedBox(
                  width: 59.w,
                ),
                const CompanyDetailsViewContainerNameAndRating(),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10.w),
                const CompanyDetailsViewContainerDetailsColumn(
                    title: 'Delivery price', titleValue: 'EGP 35.49'),
                const VerticalGreyDivider(),
                const CompanyDetailsViewContainerDetailsColumn(
                    title: 'Delivery Time', titleValue: '15 mins'),
                const VerticalGreyDivider(),
                const CompanyDetailsViewContainerDetailsColumn(
                    title: 'Delivery By', titleValue: 'ReNu You'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
