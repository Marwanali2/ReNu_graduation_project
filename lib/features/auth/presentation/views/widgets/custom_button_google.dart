import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CusttomButtonGoogle extends StatelessWidget {
  const CusttomButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kSignUp);
      },
      child: Container(
      height: 35,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: whiteColor,
        border: Border.all(
          color: buttonColor,
          width: 1
        )
        
      ),
      child:
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Icon(FontAwesomeIcons.google),
                 const SizedBox(
              width: 15,
            ),
                Text(
                  ' Continue with Google',
                  style: Styles.textStyle14.copyWith(fontSize: 12,color:const Color(0xff013004),fontFamily: robotoFont)
                ),
              ],
            ),
          ),
        
      ),
      
    );
  }
  }
