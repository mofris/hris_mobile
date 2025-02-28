import 'package:flutter/material.dart';
import 'package:hris_mobile/pages/splash_screen_page.dart';
import 'package:hris_mobile/pages/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreenPage(),
        '/onboarding': (context) => OnboardingPage(),
      },
    );
  }
}
