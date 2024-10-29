import 'package:flutter/material.dart';
import 'package:portfolio/presentation/view/projects/hirerickshaw/hirerickshaw_project.dart';

import '../../../config/routers.dart';
import '../../../data/datas.dart';

class ProjectViewer extends StatefulWidget {
  const ProjectViewer({this.subject, this.item, super.key});

  final dynamic subject;
  final dynamic item;

  @override
  State<ProjectViewer> createState() => _ProjectViewerState();
}

class _ProjectViewerState extends State<ProjectViewer> {
  @override
  Widget build(BuildContext context) {
    print(widget.subject);
    print(widget.item);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("${widget.subject}"),
      // ),
      body: Builder(builder: (context) {
        if (Routers.projectHR.contains(widget.subject)) {
          return HirerickshawProject(
              item: widget.item,
              items: Datas.HRProject.map((e) => e['image']).toList());
        }
        if (Routers.projectTP.contains(widget.subject)) {
          return HirerickshawProject(
              item: widget.item,
              items: Datas.TCProject.map((e) => e['image']).toList());
        }
        return Container();
      }),
    );
  }
}
