import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({this.text = "",this.margin, super.key});
  final String text;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
            text, 
            style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
    );
  }
}