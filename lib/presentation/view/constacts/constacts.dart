import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
              alignment: Alignment.centerLeft,
              child: Heading(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                text: Strings.contacts_me,
              )),
          18.0.spaceY,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's chat.",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Tell me about your project.",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              16.0.spaceY,
              Text(
                "Let's create something togather.",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              16.0.spaceY,
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Const.colorHeader,
                      child: Icon(Icons.mail)),
                  8.0.spaceX,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Contact me at:"),
                      GestureDetector(
                          onTap: () async {
                            final url =
                                "mailto:jameelspario@gmail.com?subject=Inquiry&body=";
                            if (await canLaunchUrlString(url)) {
                              await launchUrlString(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text("jameelspario@gmail.com")),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
