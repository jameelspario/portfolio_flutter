import 'package:flutter/material.dart';

import '../../../data/datas.dart';
import '../../../utils/const.dart';
import '../../widgets/logo.dart';

class Header extends StatelessWidget {
  const Header({this.callback, super.key});
  final Function (int index)? callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(color: Const.colorHeader),
      child: Row(
        children: [
          const Logo(),
          const Spacer(),
          for (int i = 0; i < Datas.headerItems.length; i++)
            TextButton(
              onPressed: ()=> callback?.call(i),
              child: Text(
                Datas.headerItems[i],
                style: const TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}
