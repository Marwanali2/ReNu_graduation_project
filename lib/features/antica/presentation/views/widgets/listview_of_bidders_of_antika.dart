import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class BiddersOfAntikaListView extends StatelessWidget {
  const BiddersOfAntikaListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 3 ,
            itemBuilder: (context,index){
              return SizedBox(
                height: 59,
                child: Row(
                  children: [ 
                    Image.asset('assests/images/Ellipse199.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        
                          Text('Messi',style: Styles.textStyle13.copyWith(
                            color:blackcolor,
                            fontWeight: FontWeight.w500,
                            fontFamily: poppinsBlackFont
                          ),),
                         const Text('1h 34m ago',style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff616161
                ),
                            fontWeight: FontWeight.w500,
                            fontFamily: poppinsBlackFont
                          ),)
                        ],
                      ),
                    ),
                      
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Text('EGP 220',style: Styles.textStyle13.copyWith(
                        color: borderFormColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: poppinsBlackFont
                        
                      ),),
                    )
                  ],
                ),
              );
            }
            
      ),
    );
  }
}