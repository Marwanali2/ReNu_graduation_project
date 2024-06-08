import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CompanyDetailsViewContainerDetailsColumn extends StatelessWidget {
  const CompanyDetailsViewContainerDetailsColumn({
    super.key,
    required this.title,
    required this.titleValue,
  });
  final String title;
  final String titleValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15.h,
        ),
        Text(title, style: TextStyles.font14WhiteMeduim),
        SizedBox(height: 3.h),
        Text(
          titleValue,
          style: TextStyles.font12SemiBlack1SemiBold.copyWith(
              fontWeight: FontWeight.w400, color: ColorsManager.semiGrey5),
        ),
      ],
    );
  }
}
