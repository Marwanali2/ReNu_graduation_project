import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_title_widget.dart';

class CustomTitleAnticaBar extends StatelessWidget {
  const CustomTitleAnticaBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const CustomTitleWidget(title: '',),
                               Text('Antika',
                    style: Styles.textStyle16
                        .copyWith(color: blackcolor, fontFamily: poppinsBlackFont)),
                               Container(
                  height: 29,
                  width: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: borderColor
                  ),
                               )
                             ],
                           );
  }
}