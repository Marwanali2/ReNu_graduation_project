import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/text_with_underline.dart';

class TextWithUnderLineAndArrowButton extends StatelessWidget {
  const TextWithUnderLineAndArrowButton(
      {super.key, required this.text, required this.arrowOnTap});
  final String text;
  final void Function() arrowOnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: arrowOnTap,
      child: Row(
        children: [
          TextWithUnderLine(
            text: text,
            lineWidth: 40,
            onTap: () {},
          ),
          SizedBox(
            width: 4.w,
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_forward_ios,
              size: 12.w,
            ),
          ),
        ],
      ),
    );
  }
}
