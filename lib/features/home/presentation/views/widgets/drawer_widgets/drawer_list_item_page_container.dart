import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class DrawerListItemPageContainer extends StatelessWidget {
  const DrawerListItemPageContainer({
    super.key,
    required this.titleText,
    required this.icon,
    required this.onTap,
    required this.useSvg,
    required this.svgAsset,
    this.containerColor,
  });
  final String titleText;
  final dynamic icon;
  final void Function() onTap;
  final bool useSvg;
  final String svgAsset;
  final Color? containerColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleText,
        style: TextStyles.font14SemiBlack2SemiBold,
      ),
      tileColor: containerColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
      leading: useSvg
          ? SvgPictureComponent(
              name: svgAsset,
              width: 25.w,
              height: 25.h,
            )
          : Icon(icon, size: 30.sp),
      onTap: onTap,
    );
  }
}
