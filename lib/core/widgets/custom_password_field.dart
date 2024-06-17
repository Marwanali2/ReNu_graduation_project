import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key,  this.hintText, this.onchanged, required this.controller});
  
final String? hintText;
final Function(String?)? onchanged;
final TextEditingController controller;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {




  bool obscureText = true;
  String? password;
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
    
      child: TextFormField(
        controller: passwordcontroller,
        onChanged:(value){
          password=value;
        } ,
                    validator: (value) {
                     if (value!.isEmpty) {
                     return 'field is required';
                    }
                    },
        keyboardType: TextInputType.visiblePassword,
        obscureText: obscureText,
        decoration: InputDecoration(
          constraints:const BoxConstraints(minHeight: 50),
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
          hintStyle: Styles.textStyle14.copyWith(fontFamily: interFont),
           border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: borderColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: borderColor),
          ),
           errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,color: Color(0xffE64646)),
          ),
          focusedBorder: const OutlineInputBorder(

            borderSide: BorderSide(width: 1,color: borderFormColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
           )
        ),
      
    
    );


    
  }
}