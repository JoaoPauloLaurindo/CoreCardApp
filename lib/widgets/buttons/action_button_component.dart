import 'package:corecard/themes/theme_colors.dart';
import 'package:flutter/material.dart';

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
              fontSize: 14.0,
            ),
          )
        ],
      ),
    );
  }
}
