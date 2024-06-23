import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/text_with_underline.dart';

class TitleWithSecondUnderLineTextRow extends StatelessWidget {
  const TitleWithSecondUnderLineTextRow({
    super.key,
    required this.title,
    required this.secondText,
    required this.secondTextOnTap,
  });
  final String title;
  final String secondText;
  final void Function() secondTextOnTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.font14BlackMeduim,
        ),
        const Spacer(),
        GestureDetector(
          onTap: secondTextOnTap,
          child: TextWithUnderLine(
            text: secondText,
            lineWidth: 70.w,
            // onTap: secondTextOnTap,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 12.w,
        ),
      ],
    );
  }
}
