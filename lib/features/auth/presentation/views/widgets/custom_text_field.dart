import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/helpers/validators.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
       this.hintText,
      this.obscureText = false,
      this.textInputType,
       this.onChanged,
      });
  final String? hintText;
  final bool? obscureText;
  final TextInputType? textInputType;
  final Function(String?) ? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 320,
      child: TextFormField(
        validator: (value) {

        if (value!.isEmpty) {
          return 'field is required';
        }

          // if(textInputType==TextInputType.emailAddress){
          //  if(value!.isEmpty){
          //   return 'Please enter your email';
          // }else if(!value.isValidEmail){
          //   return 'please enter valid email ';
          // }
          // }
          // if(textInputType==TextInputType.phone){
          // if(value!.isEmpty){
          //   return 'Please enter your phone';
          // }else if(!value.isValidPhone){
          //   return 'please enter valid phone ';
          // }
          // }
          // if(textInputType==TextInputType.name){
          // if(value!.isEmpty){
          //   return 'Please enter your name';
          // }else if(!value.isValidName){
          //   return 'please enter valid name ';
          // }
          // }
        
        },
        onChanged:onChanged ,
        keyboardType: textInputType,
        obscureText: obscureText!,
        decoration: InputDecoration(
          constraints:const BoxConstraints(minHeight: 50),
          isDense: true,
          hintText: hintText,
          hintStyle: Styles.textStyle14.copyWith(fontFamily: interFont),
          border:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,
            color: borderColor
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: Color(0xffE64646)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,
            color: borderColor
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1,color:borderFormColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          
          
      ),
      )
    );
  }

}



