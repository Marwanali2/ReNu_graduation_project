import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CompanyDetailsViewContainerNameAndRating extends StatelessWidget {
  const CompanyDetailsViewContainerNameAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Garbage Collection',
          style: TextStyles.font14BlackMeduim,
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Icon(Icons.star, size: 20.spMax),
            SizedBox(
              width: 2.w,
            ),
            Text('3.5', style: TextStyles.font14GreyNormal),
            SizedBox(width: 2.w),
            Text(
              '( 25 )',
              style: TextStyles.font14GreyNormal,
            ),
          ],
        ),
      ],
    );
  }
}
