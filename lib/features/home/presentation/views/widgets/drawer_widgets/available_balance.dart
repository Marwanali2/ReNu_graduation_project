import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class AvailableBalance extends StatelessWidget {
  const AvailableBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225.w,
      height: 60.h,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.semiGrey7),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 15.w),
        child: Row(
          children: [
            SvgPictureComponent(
              name: 'payment_card',
              width: 40.w,
              height: 30.h,
            ),
            SizedBox(width: 50.w),
            Column(
              children: [
                Text('Available balance', style: TextStyles.font12BlackNormal),
                Text(
                  '0.00 RPS',
                  style: TextStyles.font10BlackMeduim.copyWith(
                    color: ColorsManager.green1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
