import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../utils/const.dart';
import '../../widgets/heading.dart';
import '../../widgets/my_layout_builder.dart';
import 'projects_lists.dart';

class Projects extends StatelessWidget {
  const Projects({this.itemsProjects = const [], this.showMore, Key? key})
      : super(key: key);
  final List itemsProjects;
  final VoidCallback? showMore;

  @override
  Widget build(BuildContext context) {
    return MyLayoutBuilder(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Heading(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                text: Strings.projects,
              ),
              GestureDetector(
                  onTap: showMore, child: Text("Show More")),
            ],
          ),
          18.0.spaceY,
          ProjectsLists(projects: itemsProjects),
        ],
      ),
    );
  }
}

