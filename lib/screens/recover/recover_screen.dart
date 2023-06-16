import 'package:corecard/themes/theme_colors.dart';
import 'package:corecard/widgets/buttons/primary_button_component.dart';
import 'package:corecard/widgets/forms/inputs/text_input.dart';
import 'package:corecard/widgets/header/text_header_component.dart';
import 'package:flutter/material.dart';

class RecoverScreen extends StatelessWidget {
  const RecoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextHeader(
                  h1: 'Recuperar senha',
                  h2: 'Insira o email para recuperar a sua senha',
                ),
                TextInput(
                  labelText: "",
                  keyboard: TextInputType.emailAddress,
                  icon: Icons.email,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PrimaryButton(
                titleButton: 'Recuperar',
                onPress: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
