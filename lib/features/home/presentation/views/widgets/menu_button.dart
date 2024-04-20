import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Container(
        width: 30.w,
        height: 35.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}
