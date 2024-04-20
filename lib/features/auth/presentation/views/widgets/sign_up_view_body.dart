import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_password_field.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_mobile_number_widget.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_widget.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_title_widget.dart';
enum SingingCharacter { lafayette, jefferson }

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
    SingingCharacter? _character = SingingCharacter.lafayette;

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTitleWidget(title: "Sign Up",),
                
                const SizedBox(
                  height: 28,
                ),
                Text(
                  'Username',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: interFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
               const CustomTextField(hintText: 'Your username',),
              const SizedBox(height: 12,),
              const CustomMobileNumber(),
              const SizedBox(height: 12,),
               Text(
                  'Email',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: interFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
               const CustomTextField(hintText: 'example@gmail.com',textInputType:TextInputType.emailAddress,),
               const SizedBox(height: 12,),
               Text(
                  'Password',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: interFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
               const CustomPasswordField(hintText: 'must be 8 characters',),
                const SizedBox(height: 12,),
               Text(
                  'Confirm password',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: interFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
                const CustomPasswordField(hintText: 'repeat password',),
                 const SizedBox(height: 5,),
                 ListTile(
                  contentPadding: EdgeInsets.only(left: 10,),
                  
                           title:  Text('I accept the terms and privacy policy',style:Styles.textStyle14.copyWith(color: Color(0xff2C2C2B)) ,),
                           leading: Radio<SingingCharacter>(
                            activeColor: borderFormColor,
                             value: SingingCharacter.jefferson,
                             groupValue: _character,
                             onChanged: (SingingCharacter? value) {
                               setState(() {
                                 _character = value;
                               });
                             },
                           ),
                         ),
                 const CustomButtonField(text: 'Sign up',textcolor: borderFormColor),
                                  const SizedBox(height: 10,),

                    Center(child: CustomTextWidget(text1:'Already have account?  ',textbutton: 'Log in',pageRoute: () {
                      GoRouter.of(context).push(AppRouter.kLogIn);
                    },)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

