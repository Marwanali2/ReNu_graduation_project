import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.icon,
      required this.height,
      required this.width,
      required this.iconSize,
      required this.borderRadius,

      });
  final IconData icon;
  final double height;
  final double width;
  final double iconSize;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(width: 1, color: buttonColor)),
        child: Icon(
          icon,
          size: iconSize,
          color: Color(0xff000000),
        ),
      ),
    );
  }
}
