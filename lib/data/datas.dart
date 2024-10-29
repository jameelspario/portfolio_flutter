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
    {"id":1, "img": 'assets/images/icon-firebase.png', "title": "Firebase"},
    {"id":2,"img": 'assets/images/kotlin.png', "title": "SDK"},
    {"id":3,"img": 'assets/images/flutter.png', "title": "Rest API"},
    {"id":4,"img": 'assets/images/dart.png', "title": "Webrtc"},
    {"id":5,"img": 'assets/images/dart.png', "title": "WebSocket"},
  ];
  static List ide = [
    {"img": 'assets/images/java.png', "title": "Android Studio"},
    {"img": 'assets/images/kotlin.png', "title": "VS Code"},
  ];

  static List projects = [
    {
      "img": 'assets/images/android1.png',
      "title": "Hire Rickshaw",
      "desc": loremIpsum(words: 10),
      "links": [
        {
          "img": "assets/images/location.png",
          "url": Routers.projectHR,
          "col":"",
        },
        {
          "img": "assets/images/appstore.png",
          "url": "",
        },
        {
          "img": "assets/images/playstore.png",
          "url": "",
        },
         {
          "img": "assets/images/github.png",
          "url": "",
          "col":"",
        }, {
          "img": "assets/images/gitlab.png",
          "url": "",
        }

      ]
    },
    {
      "img": 'assets/images/android1.png',
      "title": "Toppers Club",
      "desc": loremIpsum(words: 15),
      "links": [
         {
          "img": "assets/images/location.png",
          "url": Routers.projectTP,
        },
        {
          "img": "assets/images/playstore.png",
          "url": "",
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
}
