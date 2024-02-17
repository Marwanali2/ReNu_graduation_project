import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_country_code.dart';


class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  onPressed: () {},
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
            const CustomMobileNumber()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomMobileNumber extends StatelessWidget {
  const CustomMobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Country',style: Styles.textStyle14.copyWith(color: blackcolor,fontFamily: formFont),),
            const SizedBox(height: 4,),
           const CodeCountry()
    
          ],
        ),
        const SizedBox(width: 5,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Phone number',style: Styles.textStyle14.copyWith(color: blackcolor,fontFamily: formFont),),
            const SizedBox(height: 4,),
          const SizedBox(width: 201,child:  CustomTextField(hintText: '101 645 0937'))
    
          ],
        ),
      ],
    );
  }
}