import 'package:flutter/material.dart';
import 'package:wunderbuy/utils/themes/theme.dart';

void main() {
  runApp(const Wunderbuy());
}

class Wunderbuy extends StatelessWidget {
  const Wunderbuy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
    );
  }
}
