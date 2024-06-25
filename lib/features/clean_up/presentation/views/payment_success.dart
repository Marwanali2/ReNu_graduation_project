import 'package:flutter/material.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/payment_success_body.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentSuccessViewBody(),
    );
  }
}
