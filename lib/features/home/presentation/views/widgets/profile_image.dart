import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImage extends StatelessWidget {
  final double height;
  const ProfileImage({super.key,  this.height=35});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: Image.asset(
        'assets/images/user.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
