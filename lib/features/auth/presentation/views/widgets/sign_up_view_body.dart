import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_password_field.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_mobile_number_widget.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_widget.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_title_widget.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

enum SingingCharacter { lafayette, jefferson }

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
   String email='';
   String password='';
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTitleWidget(
                    title: "Sign Up",
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Username',
                    style: Styles.textStyle14.copyWith(
                      fontFamily: interFont,
                      color: blackcolor,
                    ),
                  ),
                  const SizedBox(height: 4),
                 const CustomTextField(
                    hintText: 'Your username',
                    textInputType: TextInputType.name,
                  ),
                  const SizedBox(height: 5),
                  const CustomMobileNumber(),
                  const SizedBox(height: 5),
                  Text(
                    'Email',
                    style: Styles.textStyle14.copyWith(
                      fontFamily: interFont,
                      color: blackcolor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  CustomTextField(
                    hintText: 'example@gmail.com',
                    textInputType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value!;
                    },
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Password',
                    style: Styles.textStyle14.copyWith(
                      fontFamily: interFont,
                      color: blackcolor,
                    ),
                  ),
                  const SizedBox(height: 4),
                 const CustomPasswordField(
                    hintText: 'must be 8 characters',
                    
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Confirm password',
                    style: Styles.textStyle14.copyWith(
                      fontFamily: interFont,
                      color: blackcolor,
                    ),
                  ),
                  const SizedBox(height: 4),
                 const CustomPasswordField(
                    hintText: 'repeat password',
                  ),
                  const SizedBox(height: 5),
                  CustomButtonField(
                    text: 'Sign up',
                    textcolor: borderFormColor,
                    ontap: ()  {
                        if (formKey.currentState!.validate()) {
                        GoRouter.of(context).push(AppRouter.kRecyclingTabBar);

                         }else{
                          print('not success');
                         };

                    },
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: CustomTextWidget(
                      text1: 'Already have account?  ',
                      textbutton: 'Log in',
                      pageRoute: () {
                        GoRouter.of(context).push(AppRouter.kLogIn);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
