import 'package:flutter/material.dart';

import '../view/projects/hirerickshaw/hirerickshaw_project.dart';
import '../view/skills_viewer/skills_viewer.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SkillsViewer(),
      body: HirerickshawProject(),
    );
  }
}
