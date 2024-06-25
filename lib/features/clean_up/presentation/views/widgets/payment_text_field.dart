import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class PaymentTextField extends StatelessWidget {
  const PaymentTextField({
    super.key,
    required this.hinttext,
    required this.controller,
  });
  final String hinttext;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.datetime,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'field is required';
        } else if (hinttext == 'Card Number' && value.length < 16) {
          return 'Enter 16 correct number ';
        } else if (hinttext == '328' && value.length < 3) {
          return 'must 3 number ';
        }
      },
      decoration: InputDecoration(
        constraints: const BoxConstraints(minHeight: 50),
        isDense: true,
        hintText: hinttext,
        hintStyle: Styles.textStyle14.copyWith(fontFamily: interFont),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: borderColor),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: Color(0xffE64646)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: buttonColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: borderFormColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
