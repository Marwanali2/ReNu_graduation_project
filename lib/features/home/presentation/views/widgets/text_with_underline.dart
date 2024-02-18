import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class TextWithUnderLine extends StatelessWidget {
  const TextWithUnderLine({
    super.key,
    required this.text,
    required this.onTap,
    required this.lineWidth,
  });
  final String text;
  final void Function() onTap;
  final double lineWidth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: TextStyles.font12SemiBlack1SemiBold,
          ),
        ),
        SizedBox(
          width: lineWidth.w,
          height: 1.h,
          child: Divider(
            color: ColorsManager.semiBlack1,
          ),
        ),
      ],
    );
  }
}
