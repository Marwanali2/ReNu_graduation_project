import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class RecentRecyclingComponent extends StatelessWidget {
  const RecentRecyclingComponent({
    super.key,
    required this.status,
    required this.time,
    required this.price,
    required this.priceColor,
  });
  final String status;
  final String time;
  final String price;
  final Color priceColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width.w,
      height: MediaQuery.sizeOf(context).height * 0.09.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(
          color: ColorsManager.semiGrey2,
          width: 1.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                //  color: ColorsManager.semiBlack1,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: ColorsManager.semiGrey2,
                  width: 1.w,
                ),
              ),
              child: Center(
                child: SvgPictureComponent(
                  name: 'recycling-box',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
            SizedBox(width: 7.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status,
                  style: TextStyles.font14MainBlackSemiBold,
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
              style: TextStyles.font15SemiBlack2SemiBold.copyWith(
                    color: priceColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
