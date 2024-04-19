import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_title_widget.dart';

class DetailsOfAnticaViewBody extends StatelessWidget {
  const DetailsOfAnticaViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 35,left: 20),
          child: Column(
            children: [
               CustomTitleWidget(),
              
            ],
          ),
        )
      ],
    );
  }
}