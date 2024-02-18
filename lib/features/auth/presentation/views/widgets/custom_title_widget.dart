import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 39,
                    height: 39,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: const Color(0xffD8DADC), width: 1)),
                    child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      icon: const Icon(FontAwesomeIcons.chevronLeft),
                    ),
              );
  }
}