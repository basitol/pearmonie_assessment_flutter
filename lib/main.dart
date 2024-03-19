import 'package:flutter/material.dart';
import 'package:mobile_ui_kit/screens/onboarding_first_screen.dart';
import 'package:mobile_ui_kit/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile UI Kit',
      debugShowCheckedModeBanner: false,
      theme: MobileUITheme,
      home: const OnboardingFirstScreen(),
    );
  }
}
