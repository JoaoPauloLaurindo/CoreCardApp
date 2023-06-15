import 'package:corecard/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  final String h1;
  final String h2;
  const TextHeader({required this.h1, required this.h2, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 8.0,
          ),
          child: InkWell(
            child: const Icon(
              Icons.arrow_back_outlined,
              color: ThemeColors.secundaryColor,
              size: 28,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                h1,
                style: const TextStyle(
                  color: ThemeColors.secundaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                h2,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
