import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class ShowSubscriptionTimeContainer extends StatelessWidget {
  const ShowSubscriptionTimeContainer({
    super.key,
    required this.title,
    required this.date,
    required this.svgAsset,
  });
  final String title;
  final String date;
  final String svgAsset;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6.w,
      height: MediaQuery.sizeOf(context).height * 0.06.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 27.w,
              height: 27.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: ColorsManager.semiGrey3,
              ),
              child: Center(
                child: SvgPicture.asset(
                  svgAsset,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.font12BlackNormal.copyWith(
                    fontFamily: 'roboto',
                    color: ColorsManager.semiBlack3,
                  ),
                ),
                Text(
                  date,
                  style: TextStyles.font10SemiGrey1Normal,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
