import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_password_field.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
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
  String email = '';
  String password = '';
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController repeatpasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterLoadingState) {
          isLoading = true;
        } else if (state is RegisterSuccessState) {
          GoRouter.of(context).push(AppRouter.kLogIn);
          isLoading = false;
        } else if (state is RegisterFailureState) {
          showSnackBar(context, state.errorMessage!);
          isLoading = false;
        }
      },
      builder: ((context, state) => ModalProgressHUD(
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
                        CustomTextField(
                          hintText: 'Your username',
                          textInputType: TextInputType.name,
                          controller: namecontroller,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Phone number',
                          style: Styles.textStyle14.copyWith(
                              color: blackcolor, fontFamily: interFont),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        SizedBox(
                            width: 320,
                            child: CustomTextField(
                              controller: phonecontroller,
                              hintText: '0101 645 0937',
                              textInputType: TextInputType.phone,
                            )),
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
                          controller: emailcontroller,
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
                        CustomPasswordField(
                          controller: passwordcontroller,
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
                        CustomPasswordField(
                          controller: repeatpasswordcontroller,
                          hintText: 'repeat password',
                        ),
                        const SizedBox(height: 5),
                        CustomButtonField(
                          text: 'Sign up',
                          textcolor: borderFormColor,
                          ontap: () {
                            final String name = namecontroller.text;
                            final String email = emailcontroller.text;
                            final String phone = phonecontroller.text;
                            final String password = passwordcontroller.text;
                            final String repearpassword =
                                repeatpasswordcontroller.text;
                            if (formKey.currentState!.validate()) {
                              BlocProvider.of<AuthCubit>(context).registerUser(
                                  name: name,
                                  email: email,
                                  password: password,
                                  passwordConfirmation: repearpassword,
                                  phone: phone,
                                  );
                            }
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
          )),
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
