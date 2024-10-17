import 'package:flutter/material.dart';
import 'package:portfolio/presentation/view/intro/social_icons.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../utils/const.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width*0.7),
      margin: const EdgeInsets.all(32.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.intro1,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SocialIcons(),
            ],
          ),
          18.0.spaceX,
          // Spacer(),
          Expanded(
            child: Image.asset(Drawables.intro_img),
          )
        ],
      ),
    );
  }
}
