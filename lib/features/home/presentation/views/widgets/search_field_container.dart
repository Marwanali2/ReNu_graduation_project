import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class SearchFieldContainer extends StatelessWidget {
  const SearchFieldContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285.w,
      height: 39.h,
      decoration: BoxDecoration(
          color: ColorsManager.mainWhite,
          borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const SvgPictureComponent(
                name: 'search',
                height: 20,
                width: 0,
              ),
            ),
            SizedBox(width: 6.w),
            SizedBox(
              width: 190.w,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search...',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
