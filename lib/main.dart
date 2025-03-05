import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/login/loginscreen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNnaXhtaXhnamhzcHVxYXZxanN1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI5NDMwMjgsImV4cCI6MjA0ODUxOTAyOH0.gb43EJ1vmms_HHfdvj9bZWmAQ2Fv_qMm_yoSsjHBE8s',
      url: 'https://sgixmixgjhspuqavqjsu.supabase.co');
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
