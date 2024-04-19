import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_country_code.dart';

class CustomMobileNumber extends StatelessWidget {
  const CustomMobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone number',style: Styles.textStyle14.copyWith(color: blackcolor,fontFamily: interFont),),
        const SizedBox(height: 4,),
      const SizedBox(width: 320,child:  CustomTextField(hintText: '0101 645 0937',textInputType: TextInputType.number,))
        
      ],
    );
  }
}