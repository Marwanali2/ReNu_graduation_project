import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class PinCodeTextFieldWidget extends StatelessWidget {
  const PinCodeTextFieldWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:45,bottom: 45),
      child: PinCodeTextField(
        keyboardType: TextInputType.number,
                          appContext: context,
                          length: 4,
                          validator: (v) {
                          if (v!.length < 3) {
                          return "I'm from validator";
                        } else {
                          return null;
                        }
                      },
                      textStyle: Styles.textStyle32.copyWith(color:blackcolor ,fontFamily: interFont),
                       pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(15),
                        fieldHeight: 64,
                        fieldWidth: 59,
                        activeFillColor:blackcolor,
                        inactiveColor:borderColor,
                        selectedColor: blackcolor,
                        activeColor: borderColor,
                        borderWidth: 1
                       )
                        ),
    );
  }
}