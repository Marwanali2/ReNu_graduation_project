import 'package:flutter/material.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/svg_picture_ccomponent.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {},
          child: const SvgPictureComponent(
            name: 'notification',
            width: 20,
            height: 25,
          ),
        ),
        Positioned(
          top: 1,
          right: 2.5,
          child: Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
