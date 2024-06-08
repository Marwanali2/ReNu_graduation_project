import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_title_widget.dart';

class ForgetPaaswordViewBody extends StatefulWidget {
  const ForgetPaaswordViewBody({super.key});

  @override
  State<ForgetPaaswordViewBody> createState() => _ForgetPaaswordViewBodyState();
}

class _ForgetPaaswordViewBodyState extends State<ForgetPaaswordViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
        child: Form(
          key: formKey,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const CustomTitleWidget(title: '',),
             const SizedBox(
                height: 30,
              ),
             const SizedBox(
                  height: 76,
                  width: 216,
                  child: Text('Forget Password?', maxLines: 2,style: Styles.textStyle30)),
             const SizedBox(
                height: 28,
              ),
               SizedBox(
                height: 36,
                width: 285,
                child: Text(
                  'Don’t worry! it happens. Please enter the email associated with your account.',style: Styles.textStyle14.copyWith(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.w500),
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 40,),
               SizedBox(
                height: 80,
                width: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email address',style: Styles.textStyle14.copyWith(color: const Color(0xff000000)),),
                  const  SizedBox(height: 3,),
                   const CustomTextField(hintText: 'Enter your email address',textInputType: TextInputType.emailAddress,),
                  
                  ],
                )),
                const SizedBox(height: 30,),
                 CustomButtonField(text: 'Send Code',textcolor: borderFormColor,ontap: (){
                  GoRouter.of(context).push(AppRouter.kVerifyEmail,);
                },)
            ],
          ),
        ),
      ),
    );
  }
}
