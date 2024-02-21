import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_Facebook.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_button_email.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_icon_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_widget.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LogOrSignViewBody extends StatelessWidget {
  const LogOrSignViewBody({super.key});

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

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
        const CusttomButtonEmail(

        ),
        const SizedBox(height: 20,),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(icon: FontAwesomeIcons.google,height: 27,width: 27,iconSize: 18.87,borderRadius: 17,),
            SizedBox(width: 20,),
            CustomIconButton(icon: FontAwesomeIcons.apple,height: 27,width: 27,iconSize: 18.87,borderRadius: 17,),

          ],
        ),
        const SizedBox(height: 30,),
                    Center(child: CustomTextWidget(text1:'Already have account?',textbutton: 'Log in', pageRoute: (){
                GoRouter.of(context).push(AppRouter.kLogIn);
               },
               )),

        ]),
      ),
    );
  }
}
