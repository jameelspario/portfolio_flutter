import 'dart:io';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/flutter_eval.dart';

class MyCodeViewer extends StatefulWidget {
  const MyCodeViewer({super.key});

  @override
  State<MyCodeViewer> createState() => _MyCodeViewerState();
}

class _MyCodeViewerState extends State<MyCodeViewer> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return const CompilerWidget(
      packages: {
        'portfolio': {
          'my_code_viewer.dart': '''
              import 'package:flutter/material.dart';

              class MyApp extends StatelessWidget {
                const MyApp({super.key});

                // This widget is the root of your application.
                @override
                Widget build(BuildContext context) {
                  return MyHomePage(title: 'flutter_eval demo home page');
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
      // library: 'package:portfolio/lib/main.dart',
      library: 'package:portfolio/my_code_viewer.dart',

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


class ExampleState extends StatefulWidget {
  const ExampleState({super.key});

  @override
  State<ExampleState> createState() => _ExampleStateState();
}

class _ExampleStateState extends State<ExampleState> {
  late Runtime runtime;

  @override
  void initState() {
    super.initState();

    final compiler = Compiler();
    compiler.addPlugin(flutterEvalPlugin);

    final program = compiler.compile({
      'portfolio': { 'my_code_viewer.dart': '''
          import 'package:flutter/material.dart';
          
          class HomePage extends StatelessWidget {
            HomePage(this.number);
            final int number;
            
            @override
            Widget build(BuildContext context) {
              return Padding(
                padding: EdgeInsets.all(2.3 * 5),
                child: Container(
                  color: Colors.green,
                  child: Text('Current amount: ' + number.toString())
                )
              );
            }
          }
        ''' }
    });

    final file = File('out.evc');
    file.writeAsBytesSync(program.write());
    // print('Wrote out.evc to: ' + file.absolute.uri);

    runtime = Runtime.ofProgram(program);
    runtime.addPlugin(flutterEvalPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return (runtime.executeLib('package:portfolio/my_code_viewer.dart', 'ExampleState.', [$int(55)]) as $Value).$value;
  }

}
