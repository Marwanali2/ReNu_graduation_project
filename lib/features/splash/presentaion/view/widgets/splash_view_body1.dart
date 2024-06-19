import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.splash2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assests/images/logo1.png'),
          ],
        ),
      ),
    );
  }
}

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:graduation_project/core/routing/app_router.dart';
// import 'package:graduation_project/features/splash/presentaion/view/widgets/sliding_image.dart';

// class SplashViewBody extends StatefulWidget {
//   const SplashViewBody({super.key});

//   @override
//   State<SplashViewBody> createState() => _SplashViewBodyState();
// }

// class _SplashViewBodyState extends State<SplashViewBody>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<Offset> slidingAnimation;

//   @override
//   void initState() {

//     super.initState();

//     initSliding();
//     slidingAnimation.addListener(() {});
//     navigateToHome();
//   }

//   void navigateToHome() {
//     Future.delayed(const Duration(seconds: 2), () {
//       // Get.to(const HomeView(),transition: Transition.fade,duration: ktransationDuration);
//      GoRouter.of(context).push(AppRouter.kLogOrSign);
//     });
//   }

//   void initSliding() {
//     animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 1));
//     super.initState();

//     slidingAnimation =
//         Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
//             .animate(animationController);
//     animationController.forward();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         const SizedBox(
//           height: 5,
//         ),
//         SlidingImage(slidingAnimation: slidingAnimation)
//       ],
//     );
//   }
// }
