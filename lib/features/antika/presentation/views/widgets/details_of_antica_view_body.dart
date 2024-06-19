import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/back_icon_widget.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/bidders_bottom_sheet.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/descreption_of_details.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/estimate_of_details.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/listview_of_bidders_of_antika.dart';
class DetailsOfAnticaViewBody extends StatelessWidget {
  const DetailsOfAnticaViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 35,left: 20,right: 20),
      child: Stack(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children:[ 
                  Image.asset('assests/images/big.png'),
                     const Padding(
                        padding:  EdgeInsets.only(top: 15,left: 10),
                        child: BackIconWidget(backgroundcolor: borderFormColor,iconcolor: whiteColor,),
                      ),
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
            
                const SizedBox(height: 10,),
                const DescritionOfDetails(),
                const SizedBox(height: 10,),
                const EstimateOfDetails(),
                const SizedBox(height: 10,),
                Text('Bidders',
                          style: Styles.textStyle20.copyWith(
                fontFamily: robotoFont,
                
                          ),),
                        const  BiddersOfAntikaListView(),         
              ],
            ),
           const Padding(
                 padding: EdgeInsets.only(top:630),
                 child: SingleChildScrollView(
                   child: Center(
                  child: BiddersBottomSheet()
                                 ),
                 ),
               )
        ],
      ),
     
      
    );
  }
}


