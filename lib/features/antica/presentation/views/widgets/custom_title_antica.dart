import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/back_icon_widget.dart';

class CustomTitleAntica extends StatelessWidget {
  const CustomTitleAntica ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
                  const BackIconWidget(),
                    Text('Antika',style: Styles.textStyle16.copyWith(color: blackcolor),),
                    Image.asset('assests/images/Rectangle192.png')
      ],
    );
  }
}
