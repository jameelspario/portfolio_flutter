import 'package:flutter/material.dart';

import 'presentation/view/home/home_page.dart';
import 'presentation/view/project_viewer/project_viewer.dart';
import 'presentation/view/skills/flutter/flutter_pages.dart';
import 'presentation/view/skills_viewer/skills_viewer.dart';
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
          // return MaterialPageRoute(builder: (context) => const HomePage());
          return MaterialPageRoute(builder: (context) => const SkillsViewer());
        }
        // Handle '/projects/:id'
        // var uri = Uri.parse(settings.name ?? "");
        print(uri);
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'projects') {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(
              builder: (context) => ProjectViewer(subject: id));
        }

        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'skills') {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(
              builder: (context) => SkillsViewer(subject: id));
        }

        return MaterialPageRoute(builder: (context) => const UnknownScreen());
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
