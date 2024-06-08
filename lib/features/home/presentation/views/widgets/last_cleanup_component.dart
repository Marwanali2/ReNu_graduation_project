import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class LastCleanUpComponent extends StatelessWidget {
  const LastCleanUpComponent({
    super.key,
    required this.times,
    required this.days,
  });
  final String times;
  final String days;
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
                  name: 'special_request',
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
                  'Special request Company',
                  style: TextStyles.font14MainBlackSemiBold,
                ),
                SizedBox(height: 1.h),
                Text(
                  days,
                  style: TextStyles.font12Grey1SemiBold,
                ),
              ],
            ),
            const Spacer(),
            Text(
              times,
              style: TextStyles.font15SemiBlack2SemiBold.copyWith(
                color: ColorsManager.green1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
