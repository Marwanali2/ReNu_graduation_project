
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class DrawerHeaderAndNameCircle extends StatelessWidget {
  const DrawerHeaderAndNameCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          width: double.infinity,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: ColorsManager.green1,
            ),
            child: const SizedBox(),
          ),
        ),
        Positioned(
          top: 50,
          left: 10,
          child: CircleAvatar(
              radius: 40.r,
              backgroundColor: ColorsManager.mainBlack,
              child: Text(
                'MA',
                style: TextStyles.font22WhiteMeduim,
              )),
        ),
      ],
    );
  }
}
