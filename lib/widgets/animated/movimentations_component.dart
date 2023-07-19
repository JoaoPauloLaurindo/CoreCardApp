import 'package:corecard/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class MovimentationsComponent extends StatelessWidget {
  //final Widget child;
  const MovimentationsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
      ),
      child: Container(
        height: 270,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ThemeColors.backgroundContainerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Ultimas movimentacoes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ThemeColors.secundaryColor,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 24,
                    color: ThemeColors.secundaryColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
