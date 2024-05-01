import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/listview_of_bidders_of_antika.dart';

class BiddersOfAntika extends StatelessWidget {
  const BiddersOfAntika({super.key});

  @override
  Widget build(BuildContext context) {
    return             Expanded(
              child: Stack(
                        children: [
                         const BiddersOfAntikaListView(),
                         Center(
               child: GestureDetector(
                onTap: (){
                  
                },
                 child: Container(
                  height: 40,
                  width: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff325831)
                  ),
                  child: const Center(
                    child: Text('place a bit ',style: TextStyle(
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                      fontSize: 13
                    ),),
                  ),
                 ),
               ),
                        )]),
            );

  }
}