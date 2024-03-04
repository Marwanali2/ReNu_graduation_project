import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';

class VerticalGreyDivider extends StatelessWidget {
  const VerticalGreyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: VerticalDivider(
        color: ColorsManager.mainBlack,
      ),
    );
  }
}
