import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String titleButton;
  final Function() onPress;
  const PrimaryButton(
      {required this.titleButton, required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        child: Text(
          titleButton,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
