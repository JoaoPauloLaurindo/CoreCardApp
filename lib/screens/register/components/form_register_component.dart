import 'package:corecard/widgets/buttons/primary_button_component.dart';
import 'package:corecard/widgets/forms/inputs/text_input.dart';
import 'package:flutter/material.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TextInput(
            labelText: "Nome completo",
            icon: Icons.person_2_rounded,
          ),
          const TextInput(
            labelText: "Email",
            keyboard: TextInputType.emailAddress,
            icon: Icons.email,
          ),
          const TextInput(
            labelText: "Celular",
            keyboard: TextInputType.phone,
            icon: Icons.phone_android_rounded,
          ),
          const TextInput(
            labelText: "Senha",
            isPassword: true,
            icon: Icons.lock_outline_rounded,
          ),
          const TextInput(
            labelText: "Confirmar senha",
            isPassword: true,
            icon: Icons.lock_outline_rounded,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PrimaryButton(
              titleButton: 'Criar conta',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
