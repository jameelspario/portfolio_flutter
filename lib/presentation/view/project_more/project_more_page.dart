import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../widgets/my_layout_builder.dart';
import '../projects/projects_lists.dart';

class ProjectMorePage extends StatelessWidget {
  const ProjectMorePage({this.projects = const [], super.key});

  final List projects;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Projects", style: Theme.of(context).textTheme.titleLarge,),
              24.0.spaceY,
              ProjectsLists(projects: projects),
            ],
          ),
        ),
      ),
    );
  }
}
