import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../utils/const.dart';
import '../../widgets/heading.dart';
import '../../widgets/my_layout_builder.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return MyLayoutBuilder(
        child: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Heading(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  text: Strings.contacts_me,
                )),
            18.0.spaceY,
          ],
        ),
      );
  }
}
