import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.hintText});
  
final String hintText;
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: obscureText,
        decoration: InputDecoration(
          
          suffixIcon:  IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               obscureText
               ? Icons.visibility_off
               : Icons.visibility,
               color:buttonColor,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   obscureText = !obscureText;
               });
             },
            ),
          hintText:widget.hintText ,
          hintStyle: Styles.textStyle14.copyWith(fontFamily: formFont),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: borderColor),
          ),
          focusedBorder: const OutlineInputBorder(

            borderSide: BorderSide(width: 1,color: borderColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
           )
        ),
      
    
    );
  }
}