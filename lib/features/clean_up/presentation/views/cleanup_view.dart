import 'package:flutter/material.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/cleanup_view_body.dart';

class CleanUpView extends StatelessWidget {
  const CleanUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CleanUpViewBody(),
      ),
    );
  }
}
