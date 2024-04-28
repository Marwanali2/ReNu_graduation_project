import 'package:flutter/material.dart';
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
        width: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: buttonColor
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Icon(Icons.facebook_sharp, 
             color: Color(0xff20226A)
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Continue with facebook',
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeight.w500, color: const Color(0xff20226A)),
            ),
          ],
        ),
      ),
    );
  }
}
