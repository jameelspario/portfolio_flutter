import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../utils/const.dart';
import '../../widgets/heading.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
        height: MediaQuery.of(context).size.height * 0.8,
        constraints: BoxConstraints(
            maxWidth: c.maxWidth >= Const.windowWidth
                ? c.maxWidth * 0.7
                : c.maxWidth),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Heading(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  text: "Contact Me",
                )),
            18.0.spaceY,
          ],
        ),
      );
    });
  }
}
