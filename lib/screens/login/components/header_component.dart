import 'package:corecard/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: ThemeColors.secundaryColor,
            ),
            height: 280,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Entre com a sua conta',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Entre ou crie a sua conta',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
