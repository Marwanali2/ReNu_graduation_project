import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class PinCodeTextFieldWidget extends StatelessWidget {
  const PinCodeTextFieldWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  PinCodeTextField(
                        appContext: context,
                        length: 4,
                        validator: (v) {
                        if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                     pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15),
                      fieldHeight: 64,
                      fieldWidth: 59,
                      activeFillColor: Colors.white,
                      activeColor: blackcolor
                     )
                      );
  }
}