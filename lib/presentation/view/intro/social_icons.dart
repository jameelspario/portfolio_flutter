import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../widgets/my_image.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
            onPressed: () async {
              final url = "https://www.linkedin.com/in/jameelspario/";
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            style: IconButton.styleFrom(backgroundColor: Colors.blue),
            icon: Text(
              "in",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
        6.0.spaceX,
        // SizedBox(
        //   width: 40,
        //   height: 40,
        //   child: IconButton(
        //     onPressed: (){},
        //     style: IconButton.styleFrom(backgroundColor: Colors.blue),
        //     icon: Text(
        //       "f",
        //       style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24, color: Colors.white),
        //     ),
        //   ),
        // ),
        // 6.0.spaceX,
        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
            onPressed: () async {
              final url = "https://github.com/jameelspario";
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            iconSize: 24,
            icon: MyImage.asset(
              "assets/svg/github.svg",
              color: Colors.black87,
            ),
          ),
        ),
        6.0.spaceX,
        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
            onPressed: () async {
              final url =
                  "https://drive.google.com/file/d/1Q0Wex6gLoZrHc99ffxUyVgfGpSIUgMWa/view?usp=drive_link";
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            style: IconButton.styleFrom(backgroundColor: Colors.blue),
            icon: MyImage.asset(
              "assets/images/resume.png",
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
