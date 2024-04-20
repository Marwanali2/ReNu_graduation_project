import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: ColorsManager.mainWhite),
      ),
      width: 65.w,
      height: 28.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SvgPictureComponent(
            name: 'star',
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 1.w,
          ),
          Text(
            '115',
            style: TextStyles.font10WhiteMeduim.copyWith(fontSize: 15.sp),
          ),
        ],
      ),
    );
  }
}
