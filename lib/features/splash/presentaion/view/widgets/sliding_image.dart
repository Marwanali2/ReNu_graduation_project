import 'package:flutter/material.dart';

class SlidingImage extends StatelessWidget {
   SlidingImage({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;
  List<String> imageAssets = [
 'assets/images/logo1.jpg',
    'assets/logo2.jpg',
    'assets/Component9.jpg',
  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Center(child: Image.asset('assests/images/logo1.png'))
        );
      },
    );
  }
}
