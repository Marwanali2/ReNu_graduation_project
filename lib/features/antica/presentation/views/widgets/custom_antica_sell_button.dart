import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomAnticaSellButton extends StatelessWidget {
  const CustomAnticaSellButton({super.key, required this.backgroundcolor, required this.text});
final Color backgroundcolor;
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 56,
        width: 146,
        decoration: BoxDecoration(
          color:backgroundcolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor)
        ),
        child: Center(
          child: Text(text,style: Styles.textStyle16.copyWith(fontFamily: interFont,
          color: backgroundcolor==blackcolor? whiteColor : blackcolor,
          ),),
        ),
      ),
    );
  }
}
