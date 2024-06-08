import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class DescritionOfDetails extends StatelessWidget {
  const DescritionOfDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 320,
            height: 183,
            decoration: BoxDecoration(
              color: borderFormColor  ,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:5,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',style:Styles.textStyle20.copyWith(
                    color: whiteColor,
                    fontFamily: robotoFont,
                  ) ,),
                  const SizedBox(height: 5,),
                  Text('Lorem ipsum dolor sit amet, consectetursdfd adipiscing elit. Sed do eiusmod temporggggg incididunt ut labore et dolore magnacccccc ciincididunt ut labore et dolore magnaccccccci .',
                  style: Styles.textStyle13.copyWith(
                    color: blackcolor
                  ),),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('New',style: Styles.textStyle13.copyWith(
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: poppinsBlackFont),),
                      Text('2024',style: Styles.textStyle13.copyWith(
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: poppinsBlackFont),),
                      Text('EGP 100',style: Styles.textStyle13.copyWith(
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: poppinsBlackFont),),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Condition',style: Styles.textStyle13.copyWith(
                        color: blackcolor,
                        fontWeight: FontWeight.w400,
                        fontFamily: poppinsBlackFont),),
                      Text('Year',style: Styles.textStyle13.copyWith(
                        fontWeight: FontWeight.w400,
                         color: blackcolor,
                        fontFamily: poppinsBlackFont
                        ),),
                      Text('Starting bit',style: Styles.textStyle13.copyWith(
                        fontWeight: FontWeight.w400,
                        color: blackcolor,
                        fontFamily: poppinsBlackFont
                        ),),
                    ],
                  ),
                  
                ],
              ),

            ),
          );
  }
}