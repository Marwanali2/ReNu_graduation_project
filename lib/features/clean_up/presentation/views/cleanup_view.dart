import 'package:flutter/material.dart';
import 'package:graduation_project/features/clean_up/presentation/views/custom_google_map.dart';

class CleanUpView extends StatelessWidget {
  const CleanUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomGoogleMap(
      isShowCompany: false,
    );
  }
}
