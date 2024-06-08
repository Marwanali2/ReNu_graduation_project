import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 35.h,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.mainWhite),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Image.asset(
          'assets/images/anosa.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
