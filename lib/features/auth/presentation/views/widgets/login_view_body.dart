import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_password_field.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_icon_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_widget.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_title_widget.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();
 late String? email, password;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
          child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTitleWidget(
                    title: 'Login',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Email address',
                    style: Styles.textStyle14
                        .copyWith(fontFamily: interFont, color: blackcolor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const CustomTextField(
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Password',
                    style: Styles.textStyle14
                        .copyWith(fontFamily: interFont, color: blackcolor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const CustomPasswordField(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            GoRouter.of(context)
                                .push(AppRouter.kForgetPassword);
                          },
                          child: Text(
                            'Forget password ?',
                            style: Styles.textStyle14
                                .copyWith(color: borderFormColor),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButtonField(
                    text: 'Log in',
                    textcolor: borderFormColor,
                    ontap: ()  {
                      

                      if (formKey.currentState!.validate()) {
                        GoRouter.of(context).push(AppRouter.kRecyclingTabBar);

                         }else{
                          print('not success');
                         };

                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(child: Divider(color: borderColor)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Or Login with',
                        style: Styles.textStyle14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Divider(color: borderColor)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: SizedBox(
                      width: 250,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomIconButton(
                              icon: FontAwesomeIcons.facebook,
                              height: 49,
                              width: 49,
                              iconSize: 34.09,
                              borderRadius: 25,
                              iconColor: Color(0xff20226A),
                            ),
                            CustomIconButton(
                              icon: FontAwesomeIcons.google,
                              height: 49,
                              width: 49,
                              iconSize: 34.09,
                              borderRadius: 25,
                              iconColor: Color(0xffFF3D00),
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: CustomTextWidget(
                    text1: 'Don’t have an account? ',
                    textbutton: 'Sign up',
                    pageRoute: () {
                      GoRouter.of(context)
                          .push(AppRouter.kSignUp);
                    },
                  )),
                ],
              )),
        )),
      ),
    );
  }
}