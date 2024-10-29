import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../utils/const.dart';
import '../../widgets/heading.dart';
import '../../widgets/my_anim.dart';
import '../../widgets/my_layout_builder.dart';
import 'item_projects.dart';

class Projects extends StatelessWidget {
  const Projects({this.itemsProjects = const [], Key? key}) : super(key: key);
  final List itemsProjects;

  @override
  Widget build(BuildContext context) {
    return MyLayoutBuilder(
      child: Column(
        children: [
          const Align(
              alignment: Alignment.centerLeft,
              child: Heading(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                text: Strings.projects,
              )),
          18.0.spaceY,
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              for (final it in itemsProjects)
                MyAnim(
                  callback: () {},
                  child: ItemProject(
                    item: it,
                    callLink: (val) async {
                      if ("${val}".startsWith("http")) {
                        if (await canLaunchUrlString(val)) {
                          await launchUrlString(val);
                        } else {
                          throw 'Could not launch $val';
                        }
                      } else {
                        Navigator.pushNamed(context, val, arguments: it);
                      }
                    },
                  ),
                  // child: Item1(item: it),
                ),
            ],
          )
        ],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({this.item, super.key});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Const.colorHeader, borderRadius: BorderRadius.circular(5.0)),
      width: 250,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset("${item['img']}"),
            Positioned.fill(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "${item['title']}",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  4.0.spaceY,
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
