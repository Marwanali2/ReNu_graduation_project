import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class YourLocationAppBar extends StatelessWidget {
  const YourLocationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: Container(
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
          ),
        ),
        SizedBox(
          width: 7.w,
        ),
        Text(
          'Your Location',
          style: TextStyles.font16BlackMeduim,
        ),
        SizedBox(
          width: 1.w,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black,
              size: 30.spMax,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
              size: 20.spMax,
            )),
      ],
    );
  }
}
