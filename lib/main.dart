import 'package:flutter/material.dart';
import 'package:flutter_eval/flutter_eval.dart';

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

class EvalExample extends StatelessWidget {
  const EvalExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CompilerWidget(
      packages: {
        'portfolio': {
          'main.dart': '''
              import 'package:flutter/material.dart';

              class MyApp extends StatelessWidget {
                const MyApp({super.key});

                // This widget is the root of your application.
                @override
                Widget build(BuildContext context) {
                  return MaterialApp(
                    title: 'flutter_eval demo',
                    home: const MyHomePage(title: 'flutter_eval demo home page'),
                  );
                }
              }

              class MyHomePage extends StatefulWidget {
                const MyHomePage({Key? key, required this.title}) : super(key: key);

                final String title;

                @override
                State<MyHomePage> createState() => _MyHomePageState();
              }

              class _MyHomePageState extends State<MyHomePage> {
                _MyHomePageState();
                int _counter = 0;

                void _incrementCounter() {
                  setState(() {
                    _counter++;
                  });
                }

                @override
                Widget build(BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(widget.title),
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            '\$_counter',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      )
                    ),
                    floatingActionButton: FloatingActionButton(
                      onPressed: _incrementCounter,
                      tooltip: 'Increment',
                      child: Icon(Icons.add),
                    ),
                  );
                }
              }

            '''
        }
      },

      /// Specify which library (i.e. which file) to use as an entrypoint.
      library: 'package:portfolio/main.dart',

      /// Specify which function to call as the entrypoint.
      /// To use a constructor, use "ClassName.constructorName" syntax. In
      /// this case we are calling a default constructor so the constructor
      /// name is blank.
      function: 'MyApp.',

      /// Specify the arguments to pass to the entrypoint. Generally these
      /// should be dart_eval [$Value] objects, but when invoking a static or
      /// top-level function or constructor, [int]s, [double]s, and [bool]s
      /// should be passed directly.
      args: [null],
    );
  }
}
