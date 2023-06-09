import 'package:corecard/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final TextInputType keyboard;
  final IconData icon;
  const TextInput(
      {required this.labelText,
      this.isPassword = false,
      this.keyboard = TextInputType.none,
      this.icon = Icons.email_rounded,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            labelText,
            style: TextStyle(
              color: ThemeColors.secundaryColor,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: ThemeColors.inputTextColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                  keyboardType: keyboard,
                  obscureText: isPassword,
                  style: const TextStyle(
                    fontSize: 14,
                    color: ThemeColors.secundaryColor,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    border: const UnderlineInputBorder(),
                    icon: Icon(icon),
                    iconColor: ThemeColors.secundaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
