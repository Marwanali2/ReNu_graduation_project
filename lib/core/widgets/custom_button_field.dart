import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomButtonField extends StatelessWidget {
  const CustomButtonField({super.key, required this.text, this.ontap, this.backgroundcolor, this.textcolor});
final String text;
final VoidCallback? ontap;
final Color? backgroundcolor;
final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundcolor,
          border: Border.all(color: const Color(0xff747474),width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(text,style: Styles.textStyle16.copyWith(fontFamily: interFont,color: textcolor)),),
      ),

    );
  }
}