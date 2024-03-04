import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/widgets/two_texts_column.dart';

class SelectCleanUpTimeBody extends StatelessWidget {
  const SelectCleanUpTimeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(width: 4.w),
        SvgPicture.asset(
          'assets/svg/CalendarRange.svg',
          height: 16.h,
        ),
        SizedBox(width: 5.w),
        const TwoTextsColumn(
          text1: 'Select a day',
          text2: 'Day',
        ),
        Icon(
          Icons.access_time,
          color: ColorsManager.semiGrey1,
        ),
        SizedBox(width: 5.w),
        const TwoTextsColumn(
          text1: 'Select a Time',
          text2: 'Time',
        ),
      ],
    );
  }
}
