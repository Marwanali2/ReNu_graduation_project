import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';

class BackContainerWidget extends StatelessWidget {
  const BackContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: ColorsManager.semiGrey3)),
      child: Center(
          child: Padding(
        padding: EdgeInsets.only(left: 8.w),
        child: Icon(
          Icons.arrow_back_ios,
          size: 20.spMax,
        ),
      )),
    );
  }
}
