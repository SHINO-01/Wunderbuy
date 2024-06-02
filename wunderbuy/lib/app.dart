import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wunderbuy/features/authentication/screens/onboarding.dart';
import 'package:wunderbuy/utils/themes/theme.dart';

class Wunderbuy extends StatelessWidget{
  const Wunderbuy({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}