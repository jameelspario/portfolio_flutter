import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../utils/utils.dart';
import '../../widgets/my_anim.dart';
import 'item_projects.dart';

class ProjectsLists extends StatelessWidget {
  const ProjectsLists({this.projects = const [], super.key});

  final List projects;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      children: [
        for (final it in projects)
          MyAnim(
            callback: () {},
            child: ItemProject(
              item: it,
              callLink: (val) async {
                var url = (val['type_url'] == 'package')
                    ? Utils.playStore(val['url'])
                    : "";

                print("-$val--$it----$url");
                if ("${url}".startsWith("http")) {
                  if (await canLaunchUrlString(url)) {
                    await launchUrlString(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                } else {
                  Navigator.pushNamed(context, val['url'], arguments: it);
                }
              },
            ),
            // child: Item1(item: it),
          ),
      ],
    );
  }
}
