import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/styles.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.obscureText=false, this.textInputType});
final String hintText;
 final bool? obscureText;
final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 56,
      child: TextFormField(
        keyboardType: TextInputType.number,
        obscureText: obscureText!,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Styles.textStyle14.copyWith(fontFamily: formFont),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  width: 1
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              ),
      ),
    );
  }
}