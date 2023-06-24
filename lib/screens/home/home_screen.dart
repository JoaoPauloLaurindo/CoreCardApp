import 'package:corecard/themes/theme_colors.dart';
import 'package:corecard/widgets/actions/actions_component.dart';
import 'package:corecard/widgets/customClipper/custom_clipper_background.dart';
import 'package:corecard/widgets/header/header_bar_user_component.dart';
import 'package:corecard/widgets/infos/user_component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: Stack(
        children: [
          HeaderBarUserComponent(),
          CardComponent(),
        ],
      ),
    );
  }
}

class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
