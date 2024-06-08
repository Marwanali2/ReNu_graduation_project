import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackContainerWidget extends StatelessWidget {
  const BackContainerWidget({
    super.key,
    this.bordercolor = const Color(0xff3BAE49),
  });
  final Color bordercolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: bordercolor)),
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
