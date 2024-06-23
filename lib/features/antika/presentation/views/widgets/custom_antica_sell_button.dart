import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomAnticaSellButton extends StatelessWidget {
  const CustomAnticaSellButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kpayment);
      },
      child: Container(
        height: 56,
        width: 320,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderFormColor)),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle16
                .copyWith(fontFamily: interFont, color: borderFormColor),
          ),
        ),
      ),
    );
  }
}
