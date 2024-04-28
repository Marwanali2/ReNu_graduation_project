import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/back_icon_widget.dart';
class DetailsOfAnticaViewBody extends StatelessWidget {
  const DetailsOfAnticaViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 35,left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const BackIconWidget(),
        const SizedBox(height: 20,),
          Stack(children:[ 
            Image.asset('assests/images/big.png'),
            Padding(
              padding: const EdgeInsets.only(top: 150,left: 20),
              child: Container(
                width: 164,
                height: 47,
                decoration: BoxDecoration(
                  color: whiteColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Flower Poetry ',
                                style: Styles.textStyle20.copyWith(
                                  color: blackcolor,
                                  fontFamily: robotoFont,
                      
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Current bit ',style: TextStyle(color: blackcolor,fontSize: 12),),
                                  Text(
                                    textAlign: TextAlign.start,
                                    'EGP 135 ',
                                    style: Styles.textStyle12.copyWith(
                                      color: borderFormColor,
                                      fontFamily: poppinsBlackFont,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        
              ),

            ),
            Padding(
                   padding: const EdgeInsets.only(top: 60,left: 190),
                   child: Container(
                    height: 30,
                    width: 94,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffFFFFFF).withOpacity(0.5)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          FontAwesomeIcons.clock,
                          size: 15,
                        ),
                        Text(
                          '2h 45m 32s',
                          style: Styles.textStyle11,
                        ),
                      ],
                    ),
                                   
                                 ),
          )]),

          const SizedBox(height: 20,),
          Container(
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
          ),
          const SizedBox(height: 20,),
          Container(
            width:321,
            height:103,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: borderFormColor
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:15,right: 20,top:14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Estimate',style: Styles.textStyle12.copyWith(
                        fontFamily: robotoFont,
                        color: whiteColor,
                        fontWeight: FontWeight.w600
                        ),),
                        Text('Current bit',style: Styles.textStyle12.copyWith(
                        fontFamily: robotoFont,
                        color: whiteColor,
                        fontWeight: FontWeight.w600
                        ),), 
                    ],
                  ),
                  const SizedBox(height: 5,),
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('EGP 100 - EGP 500',style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),),
                      Text('EGP 350',style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}