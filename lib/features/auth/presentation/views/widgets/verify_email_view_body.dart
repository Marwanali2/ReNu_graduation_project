import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/pin_code_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_title_widget.dart';

class VerifyEmailViewBody extends StatefulWidget {
  const VerifyEmailViewBody({super.key});

  @override
  State<VerifyEmailViewBody> createState() => _VerifyEmailViewBodyState();
}

class _VerifyEmailViewBodyState extends State<VerifyEmailViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
 

  @override
  Widget build(BuildContext context) {
        
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
            child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTitleWidget(),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                          height: 76,
                          width: 307,
                          child: Text('Please check your email',
                              maxLines: 2, style: Styles.textStyle30)),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            'We’ve sent a code to ',
                            style: Styles.textStyle14.copyWith(
                                fontFamily: formFont,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'helloworld@gmail.com',
                            style: Styles.textStyle14.copyWith(
                                fontFamily: formFont,
                                fontWeight: FontWeight.w500,
                                color: blackcolor),
                          )
                        ],
                      ),
                      const PinCodeTextFieldWidget(),

                  const CustomButtonField(text: 'Verify'),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Text('Send code again',style: Styles.textStyle16.copyWith(fontFamily: formFont,color: blackcolor.withOpacity(0.7)),),
                      ),
                    ],
                  )
                    ]))));
  }
}
