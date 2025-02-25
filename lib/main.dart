import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/login/loginscreen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const Loginscreen(),
    );
  }
}
