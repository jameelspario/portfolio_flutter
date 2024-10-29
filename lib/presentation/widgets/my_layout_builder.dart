import 'package:flutter/material.dart';

import '../../utils/const.dart';

class MyLayoutBuilder extends StatelessWidget {
  const MyLayoutBuilder({this.child, super.key});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
        constraints: BoxConstraints(
            maxWidth: c.maxWidth >= Const.windowWidth
                ? c.maxWidth * 0.7
                : c.maxWidth),
        child: child,
      );
    });
  }
}
