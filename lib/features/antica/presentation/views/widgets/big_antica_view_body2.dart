import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class BuyNowViewBody2 extends StatelessWidget {
  const BuyNowViewBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Stack(
        children: [CustomBuyNowListView()],
      ),
    );
  }
}

class CustomBuyNowListView extends StatelessWidget {
  const CustomBuyNowListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Stack(children: [
              GestureDetector(
                child: Container(
                  height: 213,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff5B5B5B)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 25,
                  width: 94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFFFFF).withOpacity(0.3)),
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 126),
                child: Container(
                    width: 320,
                    height: 87,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFFFFFF).withOpacity(0.2)),
                    child: Padding(
                      padding: const EdgeInsets.only(top:22,left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Flower Poetry ',
                                style: Styles.textStyle14.copyWith(
                                  color: blackcolor,
                                  fontFamily: poppinsBlackFont,
                      
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.start,
                                'EGP 135 ',
                                style: Styles.textStyle14.copyWith(
                                  color: blackcolor,
                                  fontFamily: poppinsBlackFont,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              child: Container(
                               height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffD9D9D9)
                                ),
                                child: Center(
                                  child: Text('Place a bit',style: Styles.textStyle14.copyWith(
                                    fontFamily: poppinsBlackFont,
                                    fontWeight: FontWeight.w500,
                                    color: blackcolor
                                  ),),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ]),
          );
        }));
  }
}
