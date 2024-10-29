import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../utils/const.dart';
import '../skills/flutter/flutter_pages.dart';

class SkillsViewer extends StatelessWidget {
  const SkillsViewer({this.subject, Key? key}) : super(key: key);
  final dynamic subject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvoked: (b) {},
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                child: AspectRatio(
                  aspectRatio: 5,
                  child: Card(
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FlutterLogo(),
                          16.0.spaceX,
                          Text(Strings.flutter_tour),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const FlutterPages(),
            ],
          ),
        ),
      ),
    );
  }
}
