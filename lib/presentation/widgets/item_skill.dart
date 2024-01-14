import 'package:flutter/material.dart';

class ItemSkill extends StatelessWidget {
  const ItemSkill({this.icon, this.title, super.key});
  final dynamic icon;
  final dynamic title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        leading: Image.asset("$icon"),
        title: Text("$title"),
      ),
    );
  }
}
