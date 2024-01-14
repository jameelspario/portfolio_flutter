import 'package:flutter/material.dart';

import '../../../data/datas.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({this.callback, super.key});
  final Function(int index)? callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView(
        children: [
          for (int i = 0; i < Datas.headerItems.length; i++)
            ListTile(
              onTap: () => callback?.call(i),
              title: Text(Datas.headerItems[i]),
              leading: Icon(Datas.headerIcons[i]),
            )
        ],
      ),
    );
  }
}
