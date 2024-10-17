import 'package:flutter/material.dart';
import 'package:portfolio/utils/const.dart';
import 'package:portfolio/utils/extensios.dart';


class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32.0),
      // color: Colors.amber,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              width: 200.0,
              child: Image.asset(Drawables.intro_img),
            ),
          ),
         const Text(
            Strings.intro1,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
