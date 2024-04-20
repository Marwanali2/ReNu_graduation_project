import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomAnticaSellButton extends StatelessWidget {
  const CustomAnticaSellButton({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 56,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderFormColor)
        ),
        child: Center(
          child: Text(text,style: Styles.textStyle16.copyWith(fontFamily: interFont,
          color: borderFormColor
          ),),
        ),
      ),
    );
  }
}
