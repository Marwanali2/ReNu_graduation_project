import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_Facebook.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_email.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_icon_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_widget.dart';

class LogOrSignViewBody extends StatelessWidget {
  const LogOrSignViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
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
        const CusttomButtonEmail(),
        const SizedBox(height: 20,),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(icon: FontAwesomeIcons.google,),
            SizedBox(width: 20,),
            CustomIconButton(icon: FontAwesomeIcons.apple,),

          ],
        ),
        const SizedBox(height: 30,),
                    Center(child: CustomTextWidget()),

        ]),
      ),
    );
  }
}
