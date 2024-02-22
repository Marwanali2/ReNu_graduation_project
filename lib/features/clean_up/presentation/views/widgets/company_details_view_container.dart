import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

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
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 18.h),
            Row(
              children: [
                SizedBox(
                  width: 59.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Garbage Collection',
                      style: TextStyles.font14BlackMeduim,
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Icon(Icons.star, size: 20.spMax),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text('3.5', style: TextStyles.font14GreyNormal),
                        SizedBox(width: 2.w),
                        Text(
                          '( 25 )',
                          style: TextStyles.font14GreyNormal,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 25.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Text('Delivery price', style: TextStyles.font14WhiteMeduim),
                    SizedBox(height: 3.h),
                    Text(
                      'EGP 35.49',
                      style: TextStyles.font12SemiBlack1SemiBold.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorsManager.semiGrey2),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                  child: VerticalDivider(
                    color: ColorsManager.mainBlack,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Text('Delivery Time', style: TextStyles.font14WhiteMeduim),
                    SizedBox(height: 3.h),
                    Text(
                      '15 mins',
                      style: TextStyles.font12SemiBlack1SemiBold.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorsManager.semiGrey2),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                  child: VerticalDivider(
                    color: ColorsManager.mainBlack,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Text('Delivery By', style: TextStyles.font14WhiteMeduim),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        Text(
                          'ReNu You',
                          style: TextStyles.font12SemiBlack1SemiBold
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          Icons.info_outline,
                          size: 18.spMax,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
