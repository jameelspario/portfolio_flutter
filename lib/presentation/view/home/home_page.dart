import 'package:flutter/material.dart';
import 'package:portfolio/presentation/view/intro/intro.dart';
import 'package:portfolio/presentation/view/intro/intro_desktop.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../data/datas.dart';
import '../../../utils/const.dart';
import '../about/about.dart';
import '../constacts/constacts.dart';
import '../header/header.dart';
import '../header/header_mobile.dart';
import '../header/my_drawer.dart';
import '../projects/projects.dart';
import '../skills/skils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<GlobalKey> itemKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey()
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: c.maxWidth >= Const.windowWidth
            ? null
            : Drawer(
                backgroundColor: Const.colorHeader,
                child: MyDrawer(callback: (index) {
                  Navigator.pop(context);
                    Scrollable.ensureVisible(itemKeys[index].currentContext!,
                        duration: const Duration(milliseconds: 500));
                
                  }),
              ),
        body: Container(
          child: Column(
            children: [
              if (c.maxWidth >= Const.windowWidth)
                Header(
                  callback: (index) {
                    Scrollable.ensureVisible(itemKeys[index].currentContext!,
                        duration: const Duration(milliseconds: 500));
                  },
                )
              else
                HeaderMobile(
                    callback: () => scaffoldKey.currentState?.openEndDrawer()),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// Home
                      if (c.maxWidth >= Const.windowWidth)
                        IntroDesktop(key: itemKeys[0])
                      else
                        Intro(key: itemKeys[0]),
                      const Divider(),
                      /// About
                      About(key: itemKeys[1]),
                      //skills
                      Skills(key: itemKeys[2]),
                      //projects
                      Projects(key: itemKeys[3], itemsProjects: Datas.projects),
                      Contacts(key: itemKeys[4]),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Const.colorHeader,
                        ),
                        child: const Center(child: Text("2024 ©spario")),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
