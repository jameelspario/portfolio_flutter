import 'package:flutter/material.dart';

import '../../data/datas.dart';
import '../view/project_more/project_more_page.dart';
import '../view/projects/hirerickshaw/hirerickshaw_project.dart';
import '../view/skills_viewer/skills_viewer.dart';

class TestPage extends StatelessWidget {
  const TestPage({this.id = 0, super.key});

  final dynamic id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          if(id==0){
            return SkillsViewer();
          }
          if(id==1){
            return HirerickshawProject();
          }
          if(id==2) {
            return ProjectMorePage(projects: [
              ...Datas.projects,
              ...Datas.projectsMore,
            ]);
          }
          return Container();
        }
      ),
    );
  }
}
