import 'package:flutter/material.dart';

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
        onPopInvoked: (b) { },
        child:CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100.0,
              pinned: true,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  // Calculate the percentage of collapse
                  double collapsePercentage =
                      (constraints.maxHeight - kToolbarHeight) /
                          (100.0 - kToolbarHeight);
                  return FlexibleSpaceBar(
                    titlePadding: EdgeInsets.only(left: 16.0, bottom: 16.0),
                    title: Row(
                      children: [
                        if (collapsePercentage < 0.5) ...[
                          FlutterLogo(size: 20),
                          SizedBox(width: 8),
                          Text(Strings.flutter_tour, style: TextStyle(fontSize: 18)),
                        ],
                      ],
                    ),
                    background: Container(
                      color: Theme.of(context).cardColor,
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FlutterLogo(),
                            SizedBox(width: 16.0),
                            Text(Strings.flutter_tour),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close),
                  ),
                ),
              ],
            ),
            // Sliver for the rest of the content
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.0),
                    const FlutterPages(),
                    // Add more widgets here as needed
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

