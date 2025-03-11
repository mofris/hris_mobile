import 'package:flutter/material.dart';
import 'package:hris_mobile/pages/splash_screen_page.dart';
import 'package:hris_mobile/pages/onboarding_page.dart';
import 'package:hris_mobile/pages/sign_in_page.dart';
import 'package:hris_mobile/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
