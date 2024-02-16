import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/theme/colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width:35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(17),
          border: Border.all(width: 1,color:buttonColor )
        ),
        child: Icon(icon,size: 25,color: Color(0xff000000),),
      ),
    );
  }
}