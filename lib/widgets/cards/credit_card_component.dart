import 'package:corecard/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class CreditCardComponent extends StatelessWidget {
  final String balanceAvalible;
  const CreditCardComponent({required this.balanceAvalible, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ThemeColors.primaryColor,
        boxShadow: const [
          BoxShadow(
            color: ThemeColors.primaryColor,
            blurRadius: 15.0,
            spreadRadius: 3.0,
          ),
        ],
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saldo atual",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  balanceAvalible,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("•••• •••• •••• 7654"),
                Image.asset(
                  "assets/images/visa_logo_white.png",
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
