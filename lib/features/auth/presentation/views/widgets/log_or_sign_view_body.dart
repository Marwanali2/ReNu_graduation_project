import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_facebook.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_email.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_google.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_widget.dart';

class LogOrSignViewBody extends StatefulWidget {
  const LogOrSignViewBody({super.key});

  @override
  State<LogOrSignViewBody> createState() => _LogOrSignViewBodyState();
}

class _LogOrSignViewBodyState extends State<LogOrSignViewBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05),
        child: Column(children: [
          Image.asset('assests/images/Component 9.png'),
          const SizedBox(
            height: 15,
          ),
          const Text('Sign Up', style: Styles.textStyle32),
          const SizedBox(
            height: 5,
          ),
          const Text('it’s easier to sign up now', style: Styles.textStyle13),
          const SizedBox(
            height: 20,
          ),
          const CusttomButtonFaceBook(),
          const SizedBox(
            height: 10,
          ),
          const CusttomButtonEmail(),
          const SizedBox(
            height: 10,
          ),
          const CusttomButtonGoogle(),
          // const Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       CustomIconButton(icon: FontAwesomeIcons.google,height: 27,width: 27,iconSize: 18.87,borderRadius: 17,),
          //       SizedBox(width: 20,),
          //       CustomIconButton(icon: FontAwesomeIcons.apple,height: 27,width: 27,iconSize: 18.87,borderRadius: 17,),

          //     ],
          //   ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: CustomTextWidget(
            text1: 'Already have account?',
            textbutton: 'Log in',
            pageRoute: () {
              GoRouter.of(context).push(AppRouter.kLogIn);
            },
          )),
        ]),
      ),
    );
  }
}
