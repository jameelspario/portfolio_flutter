import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import '../config/routers.dart';

class Datas {
  static List headerItems = [
    "Home",
    "About",
    "Skills",
    "Projects",
    "Contact",
  ];

  static List headerIcons = [
    Icons.home,
    Icons.info,
    Icons.handyman,
    Icons.apps,
    Icons.contact_support,
  ];

  static List langs = [
    {"id":1,"img": 'assets/images/java.png', "title": "Java"},
    {"id":2,"img": 'assets/images/kotlin.png', "title": "Kotlin"},
    {"id":3,"img": 'assets/images/flutter.png', "title": "Flutter", "hasData":true},
    {"id":4,"img": 'assets/images/dart.png', "title": "Dart"},
  ];
  static List skills = [
    {"id":1, "img": 'assets/images/icon-firebase.png', "title": "Firebase",},
    {"id":2,"img": 'assets/images/icon-sdk3.png', "title": "SDK","color":"#ffffff"},
    {"id":3,"img": 'assets/images/icon-rest-api.png', "title": "Rest API", "color":"#ffffff"},
    {"id":4,"img": 'assets/images/icon-webrtc.png', "title": "Webrtc"},
    {"id":5,"img": 'assets/images/icon-websocket.png', "title": "WebSocket"},
  ];
  static List ide = [
    {"img": 'assets/images/icon-android-studio.png', "title": "Android Studio"},
    {"img": 'assets/images/icon-vs-code.png', "title": "VS Code"},
  ];

  static List projects = [
    {
      "img": 'assets/images/hrscreens/HR03.jpeg',
      "title": "Hire Rickshaw",
      "desc": "An E-Rickshaw booking app",
      "links": [
        {
          "img": "assets/svg/info.svg",
          "url": Routers.projectHR,
          "col":"",
        },
        // {
        //   "img": "assets/images/appstore.png",
        //   "url": "",
        // },
        {
          "img": "assets/images/playstore.png",
          // "url": "https://play.google.com/store/apps/details?id=com.spario.hirerickshaw",
          "url":"",
        },
        //  {
        //   "img": "assets/images/github.png",
        //   "url": "",
        //   "col":"",
        // }, {
        //   "img": "assets/images/gitlab.png",
        //   "url": "",
        // }

      ]
    },
    {
      "img": 'assets/images/hrscreens/tc02.webp',
      "title": "Toppers Club",
      "desc": "An educational app that provides live class, video on demand, e-books",
      "links": [
         {
           "img": "assets/svg/info.svg",
          "url": Routers.projectTP,
        },
        {
          "img": "assets/images/playstore.png",
          "url": "https://play.google.com/store/apps/details?id=com.spario.hirerickshaw",
        },
      ]
    },
    {
      "img": 'assets/images/android1.png',
      "title": "Indifun",
      "desc": loremIpsum(words: 12),
      "links": [
         {
          "img": "assets/images/location.png",
          "url": Routers.projectIF,
        },
        {
          "img": "assets/images/playstore.png",
          "url": "",
        }
      ]
    },
    {
      "img": 'assets/images/android1.png',
      "title": "AIA",
      "desc": loremIpsum(words: 18),
      "links": [
         {
          "img": "assets/images/location.png",
          "url": Routers.projectHR,
        },
        {
          "img": "assets/images/playstore.png",
          "url": "",
        }
      ]
    },
    {
      "img": 'assets/images/android1.png',
      "title": "School ERP",
      "desc": loremIpsum(words: 18),
      "links": [
         {
          "img": "assets/images/location.png",
          "url": Routers.projectAIA,
        },
        {
          "img": "assets/images/playstore.png",
          "url": "",
        }
      ]
    },
    {
      "img": 'assets/images/android1.png',
      "title": "TTK",
      "desc": loremIpsum(words: 18),
      "links": [
         {
          "img": "assets/images/location.png",
          "url": Routers.projectTTK,
        },
        {
          "img": "assets/images/playstore.png",
          "url": "",
        }
      ]
    },
  ];

  static List flutter = [
    {"title":"Home",},
    {"title":"Container",},
    {"title":"Card",},
    {"title":"SingleChildScrollView",},
  ];

  static List HRProject = [
    {"image":"assets/images/hrscreens/HR01.jpeg"},
    {"image":"assets/images/hrscreens/HR02.jpeg"},
    {"image":"assets/images/hrscreens/HR03.jpeg"},
    {"image":"assets/images/hrscreens/HR04.jpeg"},
    {"image":"assets/images/hrscreens/HR05.jpeg"},
    {"image":"assets/images/hrscreens/HR06.jpeg"},
    {"image":"assets/images/hrscreens/HR07.jpeg"},
    {"image":"assets/images/hrscreens/HR08.jpeg"},
    {"image":"assets/images/hrscreens/HR09.jpeg"},

  ];

  static List TCProject = [
    {"image":"assets/images/hrscreens/tc01.webp"},
    {"image":"assets/images/hrscreens/tc02.webp"},
    {"image":"assets/images/hrscreens/tc07.webp"},
    {"image":"assets/images/hrscreens/tc03.webp"},
    {"image":"assets/images/hrscreens/tc04.webp"},
    {"image":"assets/images/hrscreens/tc05.webp"},
    {"image":"assets/images/hrscreens/tc06.webp"},
    {"image":"assets/images/hrscreens/tc08.webp"},
  ];

}
