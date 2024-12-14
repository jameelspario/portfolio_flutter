import 'package:flutter/material.dart';

import 'data/datas.dart';
import 'presentation/view/home/home_page.dart';
import 'presentation/view/project_more/project_more_page.dart';
import 'presentation/view/project_viewer/project_viewer.dart';
import 'presentation/view/skills_viewer/skills_viewer.dart';
import 'presentation/widgets/test_page.dart';
import 'utils/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.title,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      // home: const HomePage( ),
      onGenerateRoute: (settings) {
        var uri = Uri.parse(settings.name ?? "");
        print(uri);
        if (settings.name == '/') {
          return MaterialPageRoute(
              settings: settings, builder: (context) => const HomePage());
          return MaterialPageRoute(builder: (context) => const TestPage());
        }
        // Handle '/projects/:id'
        // var uri = Uri.parse(settings.name ?? "");
        // >> /projects/:HireRickshaw
        print(uri);
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'projects') {
          var id = uri.pathSegments[1];
          var it = settings.arguments;
          return MaterialPageRoute(
              settings: settings,
              builder: (context) => ProjectViewer(subject: id, item: it));
        }

        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'projects-more') {
          // var id = uri.pathSegments[1];
          // var it = settings.arguments;
          return MaterialPageRoute(
              settings: settings,
              builder: (context) => ProjectMorePage(projects: [
                    ...Datas.projects,
                    ...Datas.projectsMore,
                  ]));
        }

        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'skills') {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(
              settings: settings,
              builder: (context) => SkillsViewer(subject: id));
        }

        return MaterialPageRoute(
            settings: settings,
            builder: (context) => const UnknownScreen());
      },
    );
  }
}

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          '404!',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
