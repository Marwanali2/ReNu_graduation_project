import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 284, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Password changed',
            textAlign: TextAlign.center,
            style: Styles.textStyle30
                .copyWith(fontFamily: robotoFont, color: blackcolor),
          ),
          const SizedBox(height: 12,),
          Text(
            'Your password has been changed succesfully',
            textAlign: TextAlign.center,
            style: Styles.textStyle16.copyWith(
              color: blackcolor.withOpacity(0.7),
              fontWeight: FontWeight.w400,
              fontFamily: interFont,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          CustomButtonField(
            text: 'Back to login',
            backgroundcolor: blackcolor,
            textcolor: Colors.white,
            ontap: (){
              GoRouter.of(context).push(AppRouter.kLogIn);
            },
          )
        ],
      ),
    );
  }
}
