import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:highlight/languages/dart.dart';
import 'package:portfolio/my_code_viewer.dart';

import 'package:portfolio/utils/extensios.dart';

import '../../../../data/datas.dart';
import '../../../../main.dart';
import '../../../controllers/item_select_controller.dart';
import '../../skills_viewer/category.dart';
import '../../skills_viewer/my_code_editor.dart';

class FlutterPages extends StatefulWidget {
  const FlutterPages({super.key});

  @override
  State<FlutterPages> createState() => _FlutterPagesState();
}

class _FlutterPagesState extends State<FlutterPages> {
  final itemSelectController = ItemSelectController();
  final controller = TextEditingController(text: '''
    Container(width:100, height:60, color:Colors.white)
    ''');

  // final codeController = CodeController(
  //   text: '...', // Initial code
  //   language: dart,
  // );

  final _codeController = CodeController(
    text: "Container("
        "width:100, height:100,)",
    language: dart,
    // theme: monokaiSublimeTheme,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryList(
              items: Datas.flutter,
              controller: itemSelectController,
            ),
            16.0.spaceX,
            Flexible(
                child: DescriptionBody(
              controller: itemSelectController,
              codeController: _codeController,
            )),
          ],
        ));
  }
}

class DescriptionBody extends StatelessWidget {
  const DescriptionBody(
      {required this.controller, required this.codeController, super.key});

  final ItemSelectController controller;
  final CodeController codeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Container",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Divider(),
          16.0.spaceX,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: MyCodeEditor(codeController: codeController)),
              // VerticalDivider( color: Colors.white54,),
              // Expanded(child: MyCodeViewer()),
              Expanded(child: ExampleState()),
            ],
          ),
        ],
      ),
    );
  }
}
