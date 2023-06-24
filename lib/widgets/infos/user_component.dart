import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
  const UserComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.person_2_rounded,
          size: 38,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Fulano de Tal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Bem vindo de volta!",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
