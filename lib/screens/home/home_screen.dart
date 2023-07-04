import 'package:corecard/themes/theme_colors.dart';
import 'package:corecard/widgets/cards/credit_card_component.dart';
import 'package:corecard/widgets/header/header_bar_user_component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              HeaderBarUserComponent(),
              Positioned(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.0,
                    top: 100.0,
                    right: 24.0,
                  ),
                  child: CreditCardComponent(
                    balanceAvalible: "R\$ 40.000,00",
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ActionButtonComponent(
                icon: Icons.attach_money_outlined,
                label: "Cashback",
              ),
              ActionButtonComponent(
                icon: Icons.insert_drive_file_sharp,
                label: "Documentos",
              ),
              ActionButtonComponent(
                icon: Icons.settings,
                label: "Config",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ActionButtonComponent extends StatelessWidget {
  final String label;
  final IconData icon;

  const ActionButtonComponent({
    required this.icon,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: ThemeColors.primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(icon),
          ),
          Text(
            label,
            style: const TextStyle(
              color: ThemeColors.secundaryColor,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
