import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
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
          'EcoDelta Recyclers',
          style: TextStyles.font14BlackMeduim,
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Icon(Icons.star, size: 20.spMax, color: Colors.yellow),
            SizedBox(
              width: 2.w,
            ),
            Text('4.5',
                style: TextStyles.font14GreyNormal
                    .copyWith(color: ColorsManager.mainBlack)),
            SizedBox(width: 2.w),
            Text(
              '(30)',
              style: TextStyles.font14GreyNormal
                  .copyWith(color: ColorsManager.semiGrey5),
            ),
          ],
        ),
      ],
    );
  }
}
