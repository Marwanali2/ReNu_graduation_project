import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class BiddersOfAntika extends StatelessWidget {
  const BiddersOfAntika({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 4 ,
          itemBuilder: (context,index){
            return Row(
              children: [ 
                Image.asset('assests/images/Ellipse199.png'),
                Column(
                  children: [
                    Text('Messi',style: Styles.textStyle13.copyWith(
                      color:blackcolor,
                      fontWeight: FontWeight.w500
                    ),),
                   const Text('1h 34m ago',style: TextStyle(
                      fontSize: 10,
                      color: borderColor,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                ),

                Text('EGP 220',style: Styles.textStyle13.copyWith(
                  color: borderFormColor,
                  fontWeight: FontWeight.w500,
                  
                ),)
              ],
            );
          }
          
    );
  }
}