import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';

class MyCodeEditor extends StatelessWidget {
  const MyCodeEditor({required this.codeController, super.key});
  final CodeController codeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CodeField(
        controller: codeController,
        textStyle: TextStyle(fontFamily: 'SourceCode'),
      ),
    );
  }
}
