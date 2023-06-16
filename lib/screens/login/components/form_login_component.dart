import 'package:corecard/screens/recover/recover_screen.dart';
import 'package:corecard/screens/register/register_screen.dart';
import 'package:corecard/themes/theme_colors.dart';
import 'package:corecard/widgets/buttons/primary_button_component.dart';
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
            labelText: "Senha",
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
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  child: const Text(
                    'Recuperar senha',
                    style: TextStyle(
                      color: ThemeColors.secundaryColor,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RecoverScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                onPress: () {},
                titleButton: 'Entrar',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Não tem uma conta? ',
                style: TextStyle(color: ThemeColors.secundaryColor),
              ),
              InkWell(
                child: const Text(
                  'Registre-se',
                  style: TextStyle(
                    color: ThemeColors.secundaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
