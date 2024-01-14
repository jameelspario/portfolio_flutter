import 'package:flutter/material.dart';

class ProjectViewer extends StatefulWidget {
  const ProjectViewer({this.subject, super.key});
  final dynamic subject;

  @override
  State<ProjectViewer> createState() => _ProjectViewerState();
}

class _ProjectViewerState extends State<ProjectViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("${widget.subject}"),
      // ),
      body: Container(),
    ); 
  }
}