import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
children: [
 const Text('Already have account?',style: Styles.textStyle14,),
const SizedBox(width: 5,),
  TextButton(
    onPressed: (){},
    child: Text('Log In?',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600,color: const Color(0xff000000),),))

],
    );
  }
}