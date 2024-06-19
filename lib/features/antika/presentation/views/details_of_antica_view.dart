import 'package:flutter/material.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/details_of_antica_view_body.dart';

class DetailsOfAnticaView extends StatelessWidget {
  const DetailsOfAnticaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: DetailsOfAnticaViewBody(),
    );
  }
}
