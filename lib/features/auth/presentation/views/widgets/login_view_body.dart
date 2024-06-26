import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
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

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  late String? email, password;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginLoadingState) {
          isLoading = true;
        } else if (state is LoginSuccessState) {
          GoRouter.of(context).push(AppRouter.kHome);
          isLoading = false;
        } else if (state is LoginFailureState) {
          showSnackBar(context, state.errorMessage!);

          isLoading = false;
        }
      },
      builder: (context, state) {
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
                      CustomTextField(
                        controller: emailcontroller,
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
                      SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: TextFormField(
                            controller: passwordcontroller,
                            onChanged: (value) {
                              password = value;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'field is required';
                              }
                            },
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              constraints: const BoxConstraints(minHeight: 50),
                              hintStyle: Styles.textStyle14
                                  .copyWith(fontFamily: interFont),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                    BorderSide(width: 1, color: borderColor),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                    BorderSide(width: 1, color: borderColor),
                              ),
                              errorBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xffE64646)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: borderFormColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            )),
                      ),
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
                        ontap: () async {
                          final String email = emailcontroller.text;
                          final String password = passwordcontroller.text;
                          if (formKey.currentState!.validate()) {
                            await BlocProvider.of<AuthCubit>(context)
                                .loginUser(email: email, password: password);
                          }
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
                      Center(
                        child: SizedBox(
                          width: 250,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const CustomIconButton(
                                  icon: FontAwesomeIcons.facebook,
                                  height: 49,
                                  width: 49,
                                  iconSize: 34.09,
                                  borderRadius: 25,
                                  iconColor: Color(0xff20226A),
                                ),
                                Image.asset('assests/images/google.png')
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
                          GoRouter.of(context).push(AppRouter.kSignUp);
                        },
                      )),
                    ],
                  )),
            )),
          ),
        );
      },
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
