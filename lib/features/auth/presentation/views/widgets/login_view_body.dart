import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_password_field.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_icon_button.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
    GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Padding(
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
                const Text('Log In', style: Styles.textStyle30),
                const SizedBox(
                  height: 28,
                ),const SizedBox(height: 12,),
               Text(
                  'Email address',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: formFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
               const CustomTextField(textInputType:TextInputType.emailAddress,),
               const SizedBox(height: 12,),
               Text(
                  'Password',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: formFont, color: blackcolor),
                ),
                const SizedBox(height: 4,),
               const CustomPasswordField(),
              const SizedBox(height: 10,),
                Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Text('Forget password ?',style: Styles.textStyle14.copyWith(color: blackcolor),))
                ],
               ),
               const SizedBox(height: 30,),
              const CustomButtonField(text: 'Log in',),
              const SizedBox(height: 10,),
               const Row(children: [
                Expanded(child: Divider(color: borderColor)),
                SizedBox(width: 10,),
                Text('Or Login with',style: Styles.textStyle14,),
                SizedBox(width: 10,),
               Expanded(child: Divider(color: borderColor)),

               ],),
               const SizedBox(height: 30,),
              const SizedBox(
                width: 320,
                 child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  CustomIconButton(icon: FontAwesomeIcons.facebook,height: 49,width: 49,iconSize: 34.09,borderRadius: 25,),
                  CustomIconButton(icon: FontAwesomeIcons.google,height: 49,width: 49,iconSize: 34.09,borderRadius: 25,),
                  CustomIconButton(icon: FontAwesomeIcons.apple,height: 49,width: 49,iconSize: 34,borderRadius: 25,)
                  
                              ]),
               ),
               
                
               ],)
        
          ),
          )
      );
    
  }
}