import 'package:corecard/screens/login/login_screen.dart';
import 'package:corecard/themes/core_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Corecard());
}

class Corecard extends StatelessWidget {
  const Corecard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corecard',
      theme: CoreTheme,
      home: const Login(),
    );
  }
}
