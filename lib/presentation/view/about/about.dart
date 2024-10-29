import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import '../../../utils/const.dart';
import '../../widgets/heading.dart';
import '../../widgets/my_layout_builder.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLayoutBuilder(
      child: Column(
        children: [
          const Align(
              alignment: Alignment.centerLeft,
              child: Heading(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                text: Strings.about,
              )),
          // Text(loremIpsum(words: 60)),
          Text(Strings.about_text),
        ],
      ),
    );
  }
}
