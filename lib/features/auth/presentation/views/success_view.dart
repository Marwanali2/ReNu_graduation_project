import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/success_view_body.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuccessViewBody(),
    );
  }
}