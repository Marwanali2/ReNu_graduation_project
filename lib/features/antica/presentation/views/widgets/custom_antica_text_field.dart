import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
class CustomAnticaTextField extends StatelessWidget {
  const CustomAnticaTextField({super.key, required this.height});
final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height ,
      width: 320,
      child: const TextField(
        minLines: null,
    maxLines: null,
    expands: true,
    textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
      border: OutlineInputBorder(
         borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,
            color: borderColor
            ),
      ),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1,
            color: borderFormColor
            ),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(width: 1,color:borderFormColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
      ),
      ),
    );
  }
}