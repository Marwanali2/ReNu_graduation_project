import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:flutter/cupertino.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.height,
    required this.width,
    required this.iconSize,
    required this.borderRadius,
    required this.iconColor,
  });
  final IconData icon;
  final double height;
  final double width;
  final double iconSize;
  final double borderRadius;
  final Color iconColor;
  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          //border: Border.all(width: 1, color: buttonColor),
        ),
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: widget.iconColor,
        ),
      ),
    );
  }
}
