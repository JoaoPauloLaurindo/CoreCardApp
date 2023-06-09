import 'package:corecard/themes/theme_colors.dart';
import 'package:corecard/widgets/forms/inputs/text_input.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool rememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const TextInput(
            labelText: "Email",
            keyboard: TextInputType.emailAddress,
            icon: Icons.email,
          ),
          const TextInput(
            labelText: "Password",
            isPassword: true,
            icon: Icons.lock_outline_rounded,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: rememberPassword,
                    checkColor: ThemeColors.inputTextColor,
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return ThemeColors.secundaryColor;
                      }
                      return ThemeColors.secundaryColor;
                    }),
                    onChanged: (bool? value) {
                      setState(() => rememberPassword = value!);
                    },
                  ),
                  const Text(
                    'Lembrar a senha',
                    style: TextStyle(
                      color: ThemeColors.secundaryColor,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  'Recuperar senha',
                  style: TextStyle(
                    color: ThemeColors.secundaryColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Entrar',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Não tem uma conta? ',
                style: TextStyle(color: ThemeColors.secundaryColor),
              ),
              Text(
                'Registre-se',
                style: TextStyle(
                  color: ThemeColors.secundaryColor,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
