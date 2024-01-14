import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/item_skill.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../data/datas.dart';
import '../../../utils/const.dart';
import '../../widgets/heading.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
        constraints: BoxConstraints(
            maxWidth: c.maxWidth >= Const.windowWidth
                ? c.maxWidth * 0.7
                : c.maxWidth),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Heading(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  text: "Skills",
                )),
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          //langs
                          for (final it in Datas.langs) MyChip(item: it),
                         
                        ],
                      ),
                      18.0.spaceY,
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          
                          //tech
                          for (final it in Datas.skills) MyChip(item: it),
                         
                        ],
                      ),
                      18.0.spaceY,
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          //IDE
                          for (final it in Datas.ide) MyChip(item: it),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    });
  }
}

class MyChip extends StatelessWidget {
  const MyChip({this.item, super.key});
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      label: Text(item['title']),
      avatar: Image.asset(item['img']),
      elevation: 12.0,
      shape: const StadiumBorder(side: BorderSide()),
    );
  }
}
