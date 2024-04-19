import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text1, required this.textbutton, required this.pageRoute, });
  final String text1;
  final String textbutton;
  final VoidCallback pageRoute;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
children: [
  Text(text1,style: Styles.textStyle14.copyWith(color: blackcolor),),
  GestureDetector(
    onTap: pageRoute,
    child: Text(textbutton,style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600,color: const Color(0xff3BAE49),),))

],
    );
  }
}