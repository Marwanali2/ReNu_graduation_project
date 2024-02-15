import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_Facebook.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_email.dart';

class LogOrSignViewBody extends StatelessWidget {
  const LogOrSignViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 119),
        child: Column(
          children: [
          Image.asset('assests/images/logo.png'),
          const SizedBox(
            height: 80,
          ),
          const Text('Sign Up', style: Styles.textStyle32),
          const SizedBox(
            height: 13,
          ),
          const Text('it’s easier to sign up now', style: Styles.textStyle13),
          const SizedBox(height: 40,),
          const CusttomButtonFaceBook(),
          const SizedBox(height: 20,),
        const CusttomButtonEmail()
        ]),
      ),
    );
  }
}
