import 'package:flutter/material.dart';

import 'presentation/view/home/home_page.dart';
import 'presentation/view/project_viewer/project_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jameel\'s Portfolio',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      // home: const HomePage( ),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const HomePage());
        }
           // Handle '/projects/:id'
        var uri = Uri.parse(settings.name ?? "");
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'projects') {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(builder: (context) => ProjectViewer(subject: id));
        }

        return MaterialPageRoute(builder: (context) =>const UnknownScreen());
        
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
      body:const Center(
        child: Text('404!'),
      ),
    );
  }
}