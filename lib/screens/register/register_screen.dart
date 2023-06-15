import 'package:corecard/screens/register/components/form_register_component.dart';
import 'package:corecard/themes/theme_colors.dart';
import 'package:corecard/widgets/header/text_header_component.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextHeader(
              h1: 'Crie a sua conta',
              h2: 'Insira as informações para podermos criar a sua conta.',
            ),
            FormRegister(),
          ],
        ),
      ),
    );
  }
}
