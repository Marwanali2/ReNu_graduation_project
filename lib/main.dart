import 'package:flutter/material.dart';
import 'package:graduation_project/core/routing/app_router.dart';
// import 'firebase_options.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyCaECG5syO8itjbXP5FpQQ66ygkLgKf0DQ",
  //         appId: "1:720809979249:android:73ff7889748f2353f49ad0",
  //         messagingSenderId: "720809979249",
  //         projectId: "graduationproject-33e4c"
  //         ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
