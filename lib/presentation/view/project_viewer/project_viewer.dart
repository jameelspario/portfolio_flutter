import 'package:flutter/material.dart';
import 'package:portfolio/presentation/view/projects/hirerickshaw/hirerickshaw_project.dart';


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
      body: Builder(builder: (context) {
        List detail = [];
        if(widget.item['detail']!=null){
          detail = widget.item['detail'];
        }
        return HirerickshawProject(
            item: widget.item,
            items: detail.map((e) => e['image']).toList());

      }),
    );
  }
}
