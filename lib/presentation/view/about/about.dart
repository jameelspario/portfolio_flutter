import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import '../../../utils/const.dart';
import '../../widgets/heading.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
          constraints: BoxConstraints(
            maxWidth: c.maxWidth >= Const.windowWidth ? c.maxWidth*0.7 : c.maxWidth
          ),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Heading(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    text: "About",
                  )),
              Text(loremIpsum(words: 60)),
            ],
          ),
        );
      }
    );
  }
}
