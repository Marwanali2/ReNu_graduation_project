import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';

class TwoTextsColumn extends StatelessWidget {
  const TwoTextsColumn({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyles.font8BlackMeduim.copyWith(fontSize: 9.sp),
        ),
        SizedBox(height: 8.h),
        Text(
          text2,
          style: TextStyles.font16BlackSemiBoldInter,
        )
      ],
    );
  }
}
