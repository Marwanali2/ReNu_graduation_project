import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class SvgWithTitleWithIconButton extends StatelessWidget {
  const SvgWithTitleWithIconButton({
    super.key,
    required this.svgName,
    required this.title,
    required this.gestureDetectorOnPressed,
  });
  final String svgName;
  final String title;
  final void Function() gestureDetectorOnPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDetectorOnPressed,
      child: Row(
        children: [
          SvgPictureComponent(
            name: svgName,
            height: 24.h,
            width: 24.w,
          ),
          SizedBox(width: 10.w),
          Text(
            title,
            style: TextStyles.font16BlackMeduimRoboto.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
