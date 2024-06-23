import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessViewBody extends StatelessWidget {
  const PaymentSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Lottie.asset('assets/lottie/success.json'),
         
        ), CustomButtonField(
            text: 'Go to Review',
            ontap: (){},
          )
          
      ],
    );
  }
}