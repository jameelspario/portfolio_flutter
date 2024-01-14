import 'package:flutter/material.dart';

import '../../../data/datas.dart';
import '../../../utils/const.dart';
import '../../widgets/logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({this.callback, super.key});
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(color: Const.colorHeader),
      child: Row(
        children: [
          Logo(),
          Spacer(),
          IconButton(onPressed: callback, icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
