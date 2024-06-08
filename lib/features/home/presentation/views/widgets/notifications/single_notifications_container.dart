import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class SingleNotificationContainer extends StatelessWidget {
  const SingleNotificationContainer({
    super.key,
    required this.notificationTitle,
    required this.notificationDiscription,
    required this.notificationTime,
    required this.notificationSvgName,
    this.notificationColor = const Color(0xff8CD56C),
    this.border,
  });
  final String notificationTitle;
  final String notificationDiscription;
  final String notificationTime;
  final String notificationSvgName;
  final Color? notificationColor;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.18.h,
      width: MediaQuery.sizeOf(context).width.w,
      decoration: BoxDecoration(
        color: notificationColor,
        borderRadius: BorderRadius.circular(20.r),
        border: border,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPictureComponent(
                  name: notificationSvgName,
                  width: 33,
                  height: 30,
                ),
                SizedBox(width: 5.w),
                SizedBox(
                  width: (MediaQuery.sizeOf(context).height * 0.18.h),
                  child: Text(
                    notificationTitle,
                    style: TextStyles.font15SemiBlack2SemiBold
                        .copyWith(fontSize: 14.sp),
                  ),
                ),
                const Spacer(),
                Text(
                  notificationTime,
                  style: TextStyles.font14BlackLight.copyWith(
                    color: border != null
                        ? ColorsManager.mainBlack
                        : ColorsManager.mainWhite,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Text(
                notificationDiscription,
                overflow: TextOverflow.fade,
                maxLines: 3,
                style: TextStyles.font15SemiBlack2SemiBold.copyWith(
                  fontSize: 13.sp,
                  color: border != null
                      ? ColorsManager.semiBlack2
                      : ColorsManager.mainWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
