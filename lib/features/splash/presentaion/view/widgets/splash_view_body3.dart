import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kLogOrSign);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assests/images/Component 9.png'),
          ],
        ),
      ),
    );
  }
}
