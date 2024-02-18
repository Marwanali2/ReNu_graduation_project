import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project/graduation_project.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const GraduationProject());
}
