import 'package:flutter/material.dart';

class ActionsComponent extends StatelessWidget {
  const ActionsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(
            Icons.notifications,
            size: 28,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(
            Icons.headset_mic_rounded,
            size: 28,
          ),
        ),
      ],
    );
  }
}
