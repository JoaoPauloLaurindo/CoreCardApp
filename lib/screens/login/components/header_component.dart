import 'package:corecard/themes/theme_colors.dart';
import 'package:corecard/widgets/customClipper/custom_clipper_background.dart';
import 'package:flutter/material.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomClipperBackground(),
          child: Container(
            width: double.infinity,
            height: 280,
            color: ThemeColors.secundaryColor,
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
