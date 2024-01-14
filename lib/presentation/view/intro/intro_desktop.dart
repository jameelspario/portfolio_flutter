import 'package:flutter/material.dart';
import 'package:portfolio/presentation/view/intro/social_icons.dart';
import 'package:portfolio/utils/extensios.dart';

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
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi\nI'm Jameel\nAndroid Developer",
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
            child: Image.asset("assets/images/android1.png"),
          )
        ],
      ),
    );
  }
}
