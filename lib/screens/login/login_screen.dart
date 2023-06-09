import 'package:corecard/screens/login/components/form_login_component.dart';
import 'package:corecard/screens/login/components/header_component.dart';
import 'package:corecard/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HeaderLogin(),
          FormLogin(),
        ],
      ),
    );
  }
}
