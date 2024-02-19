import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
       this.hintText,
      this.obscureText = false,
      this.textInputType,
      });
  final String? hintText;
  final bool? obscureText;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 320,
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: obscureText!,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Styles.textStyle14.copyWith(fontFamily: interFont),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,
            color: borderColor
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1,color:borderColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          
          
      ),
      )
    );
  }

}



