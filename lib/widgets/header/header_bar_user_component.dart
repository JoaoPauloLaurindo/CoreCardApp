import 'package:corecard/themes/theme_colors.dart';
import 'package:corecard/widgets/actions/actions_component.dart';
import 'package:corecard/widgets/customClipper/custom_clipper_background.dart';
import 'package:corecard/widgets/infos/user_component.dart';
import 'package:flutter/material.dart';

class HeaderBarUserComponent extends StatelessWidget {
  const HeaderBarUserComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperBackground(),
      child: Container(
        width: double.infinity,
        height: 280,
        color: ThemeColors.secundaryColor,
        child: const Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 28.0,
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                UserComponent(),
                ActionsComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
