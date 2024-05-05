import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CurrentBitEgp extends StatelessWidget {
  const CurrentBitEgp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(child: Image.asset('assests/images/minus.png')),
                            Text('EGP 135.00',style: Styles.textStyle20.copyWith(fontFamily: robotoFont),),
                            GestureDetector(child: Image.asset('assests/images/plus.png'))
                          ],);
  }
}