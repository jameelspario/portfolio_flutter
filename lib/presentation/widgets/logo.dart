import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
            "JAMEEL",
            style: TextStyle(
              color: Colors.amber.shade500,
              fontSize: 18.0,
              decoration: TextDecoration.underline
            ),
          );
  }
}