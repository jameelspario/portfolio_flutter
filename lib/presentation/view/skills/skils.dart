import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/item_skill.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../data/datas.dart';
import '../../../utils/const.dart';
import '../../../utils/utils.dart';
import '../../widgets/heading.dart';
import '../../widgets/my_image.dart';
import '../../widgets/my_layout_builder.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLayoutBuilder(
        child: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Heading(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  text: Strings.skills,
                )),
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Wrap(
                      //   spacing: 10,
                      //   runSpacing: 10,
                      //   children: [
                      //     //langs
                      //     for (final it in Datas.langs)
                      //       MyChip(
                      //         item: it,
                      //         callback: () {
                      //           if (it['hasData']) {
                      //             Navigator.pushNamed(
                      //                 context, "/skills/${it['id']}");
                      //           }
                      //         },
                      //       ),
                      //   ],
                      // ),
                      // 18.0.spaceY,
                      // Wrap(
                      //   spacing: 10,
                      //   runSpacing: 10,
                      //   children: [
                      //     //tech
                      //     for (final it in Datas.skills)
                      //       MyChip(
                      //         item: it,
                      //         callback: () {
                      //           Navigator.pushNamed(
                      //               context, "/skills/${it['id']}");
                      //         },
                      //       ),
                      //   ],
                      // ),
                      // Wrap(
                      //   spacing: 10,
                      //   runSpacing: 10,
                      //   children: [
                      //     //IDE
                      //     for (final it in Datas.ide) MyChip(item: it),
                      //   ],
                      // ),
                      18.0.spaceY,
                      ChipGroup(
                        items: Datas.langs,
                        onItemTap: (val) {
                          if (!val['hasData']) {
                            return;
                          }
                          Navigator.pushNamed(context, "/skills/${val['id']}",
                              arguments: val);
                        },
                      ),
                      18.0.spaceY,
                      ChipGroup(items: Datas.skills),
                      18.0.spaceY,
                      ChipGroup(items: Datas.ide),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
  }
}

class ChipGroup extends StatelessWidget {
  const ChipGroup({this.items = const [], this.onItemTap, super.key});

  final List items;
  final OnItemTap? onItemTap;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        //IDE
        for (final it in items)
          MyChip(
            item: it,
            callback: () => onItemTap?.call(it),
          ),
      ],
    );
  }
}

class MyChip extends StatelessWidget {
  const MyChip({this.item, this.callback, super.key});

  final dynamic item;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Chip(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(item['title']),
            if (item['hasData'] ?? false)
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Icon(
                  Icons.info_outline_rounded,
                  size: 14,
                  color: Colors.white70,
                ),
              )
          ],
        ),
        avatar: MyImage.asset(
          item['img'],
          color: item['color'] != null ? Utils.hexToColor(item['color']) : null,
        ),
        elevation: 12.0,
        shadowColor: Colors.white10,
        backgroundColor:
            (item['hasData'] ?? false) ? Colors.white24 : Colors.white12,
        shape: const StadiumBorder(side: BorderSide()),
      ),
    );
  }
}
