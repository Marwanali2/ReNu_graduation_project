import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_password_field.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_mobile_number_widget.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_text_widget.dart';
class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
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
                Container(
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color(0xffD8DADC), width: 1)),
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(FontAwesomeIcons.chevronLeft),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Sign Up', style: Styles.textStyle30),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  'Username',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: formFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
               const CustomTextField(hintText: 'Your username',),
              const SizedBox(height: 12,),
              const CustomMobileNumber(),
              const SizedBox(height: 12,),
               Text(
                  'Email',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: formFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
               const CustomTextField(hintText: 'example@gmail.com',textInputType:TextInputType.emailAddress,),
               const SizedBox(height: 12,),
               Text(
                  'Password',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: formFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
               const CustomPasswordField(hintText: 'must be 8 characters',),
                const SizedBox(height: 12,),
               Text(
                  'Confirm password',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: formFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
                const CustomPasswordField(hintText: 'repeat password',),
                 const SizedBox(height: 20,),
                 const CustomButtonField(text: 'Sign up'),
                 const Center(child: CustomTextWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

