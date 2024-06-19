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
  bool obscureText = true;
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
                        SizedBox(
      height: 80,
    
      child: TextFormField(
        controller: passwordcontroller,
        onChanged:(value){
          password=value;
        } ,
                    validator: (value) {
                     if (value!.isEmpty) {
                     return 'field is required';
                    }
                    },
        keyboardType: TextInputType.visiblePassword,
        obscureText: obscureText,
        decoration: InputDecoration(
          constraints:const BoxConstraints(minHeight: 50),
          suffixIcon:  IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               obscureText
               ? Icons.visibility_off
               : Icons.visibility,
               color:buttonColor,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   obscureText = !obscureText;
               });
             },
            ),
          hintText:'must be more than 8',
          hintStyle: Styles.textStyle14.copyWith(fontFamily: interFont),
           border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: borderColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: borderColor),
          ),
           errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: Color(0xffE64646)),
          ),
          focusedBorder: const OutlineInputBorder(

            borderSide: BorderSide(width: 1,color: borderFormColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
           )
        ),
      
    
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
                       SizedBox(
      height: 80,
    
      child: TextFormField(
        controller: repeatpasswordcontroller,
        onChanged:(value){
          password=value;
        } ,
                    validator: (value) {
                     if (value!.isEmpty) {
                     return 'field is required';
                    }
                    },
        keyboardType: TextInputType.visiblePassword,
        obscureText: obscureText,
        decoration: InputDecoration(
          constraints:const BoxConstraints(minHeight: 50),
          suffixIcon:  IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               obscureText
               ? Icons.visibility_off
               : Icons.visibility,
               color:buttonColor,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   obscureText = !obscureText;
               });
             },
            ),
          hintText:'repeat password ',
          hintStyle: Styles.textStyle14.copyWith(fontFamily: interFont),
           border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: borderColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: borderColor),
          ),
           errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: Color(0xffE64646)),
          ),
          focusedBorder: const OutlineInputBorder(

            borderSide: BorderSide(width: 1,color: borderFormColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
           )
        ),
      
    
    ),

                        const SizedBox(height: 5),
                        CustomButtonField(
                          text: 'Sign up',
                          textcolor: borderFormColor,
                          ontap: () {
                             String name = namecontroller.text;
                             String email = emailcontroller.text;
                             String phone = phonecontroller.text;
                             String password = passwordcontroller.text;
                             String repearpassword =
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
