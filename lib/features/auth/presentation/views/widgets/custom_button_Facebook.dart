import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CusttomButtonFaceBook extends StatefulWidget {
  const CusttomButtonFaceBook({super.key,  });

  @override
  State<CusttomButtonFaceBook> createState() => _CusttomButtonFaceBookState();
}

class _CusttomButtonFaceBookState extends State<CusttomButtonFaceBook> {
//   Future<UserCredential> signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );

//   // Once signed in, return the UserCredential
//   return await FirebaseAuth.instance.signInWithCredential(credential);
// }
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        // signInWithGoogle();
      },
      child: Container(
        height: 35,
        width: 242,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor.withOpacity(0.6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Icon(Icons.facebook_sharp, 
             color: buttonColor
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'it’s easier to sign up now',
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeight.w500, color: whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
