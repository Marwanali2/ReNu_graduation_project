import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CurrentBitEgp extends StatefulWidget {
  const CurrentBitEgp({super.key});

  @override
  State<CurrentBitEgp> createState() => _CurrentBitEgpState();
}

class _CurrentBitEgpState extends State<CurrentBitEgp> {

  double binegp=0.00;
  @override
  Widget build(BuildContext context) {
    return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                if(binegp==0.00){
                                  binegp=0.00;
                                  setState(() {
                                    
                                  });
                                }else{
                                  binegp=binegp-5;
                                  setState(() {
                                    
                                  });
                                }
                              },
                              child: Image.asset('assests/images/minus.png')),
                            Text('EGP '+binegp.toString(),style: Styles.textStyle20.copyWith(fontFamily: robotoFont),),
                            GestureDetector(
                              onTap: (){
                                 binegp=binegp+5;
                                setState(() {
                                  
                                });
                              },
                              child: Image.asset('assests/images/plus.png'))
                          ],);
  }
}