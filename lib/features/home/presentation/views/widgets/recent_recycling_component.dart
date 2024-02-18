import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class RecentRecyclingComponent extends StatelessWidget {
  const RecentRecyclingComponent({
    super.key,
    required this.status,
    required this.time,
    required this.price,
  });
  final String status;
  final String time;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329.w,
      height: 54.h,
      decoration: BoxDecoration(
        color: ColorsManager.semiGrey2.withOpacity(0.1),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Row(
          children: [
            Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: ColorsManager.semiBlack1,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            SizedBox(width: 7.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status,
                  style: TextStyles.font14Grey2SemiBold,
                ),
                SizedBox(height: 1.h),
                Text(
                  time,
                  style: TextStyles.font12Grey1SemiBold,
                ),
              ],
            ),
            const Spacer(),
            Text(
              price,
              style: TextStyles.font15SemiBlack2SemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
