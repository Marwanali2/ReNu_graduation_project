import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/theme/colors.dart';

class BackIconWidget extends StatelessWidget {
  const BackIconWidget({
    super.key,
    this.backgroundcolor,
    this.iconcolor,
  });
  final Color? backgroundcolor;
  final Color? iconcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39,
      height: 39,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundcolor,
          border: Border.all(color: borderFormColor, width: 1)),
      child: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: Icon(
          FontAwesomeIcons.chevronLeft,
          color: iconcolor,
        ),
        iconSize: 15,
      ),
    );
  }
}
