import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/catigories.dart';
import 'package:graduation_project/core/theme/colors.dart';

class ChooseCatigoryBodyListView extends StatelessWidget {
  const ChooseCatigoryBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder:(context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Container(
                width:50,
                height:60,
                decoration: BoxDecoration(
                  border: Border.all(color: blackcolor,width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Image.asset(catigories[index]),
                
              ),
            );
          },
          ),
      ),
    );
  }
}
