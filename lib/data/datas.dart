import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import '../config/routers.dart';

class Datas {
  static const white = "#FFFFFF";
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
    {"id": 1, "img": 'assets/images/java.png', "title": "Java"},
    {"id": 2, "img": 'assets/images/kotlin.png', "title": "Kotlin"},
    {
      "id": 3,
      "img": 'assets/images/flutter.png',
      "title": "Flutter",
      "hasData": true
    },
    {"id": 4, "img": 'assets/images/dart.png', "title": "Dart"},
  ];
  static List skills = [
    {
      "id": 1,
      "img": 'assets/images/icon-firebase.png',
      "title": "Firebase",
    },
    {
      "id": 2,
      "img": 'assets/images/icon-sdk3.png',
      "title": "SDK",
      "color": "#ffffff"
    },
    {
      "id": 3,
      "img": 'assets/images/icon-rest-api.png',
      "title": "Rest API",
      "color": "#ffffff"
    },
    {"id": 4, "img": 'assets/images/icon-webrtc.png', "title": "Webrtc"},
    {"id": 5, "img": 'assets/images/icon-websocket.png', "title": "WebSocket"},
    {
      "id": 6,
      "img": 'assets/svg/git.svg',
      "title": "Git",
      "color": "#ffffff",
    },
    {
      "id": 7,
      "img": 'assets/images/sql.png',
      "title": "SQL",
      "color": "#ffffff",
    },
  ];
  static List ide = [
    {"img": 'assets/images/icon-android-studio.png', "title": "Android Studio"},
    {"img": 'assets/images/icon-vs-code.png', "title": "VS Code"},
  ];

  static List projects = [
    {
      "img": 'assets/images/hrscreens/HR03.webp',
      "title": "Hire Rickshaw",
      "desc": "An E-Rickshaw booking app",
      "links": [
        {
          "img": "assets/svg/info.svg",
          "url": Routers.projectHR,
          "color": "#FFFFFF",
          "tooltip": "Show more",
        },
        // {
        //   "img": "assets/images/appstore.png",
        //   "url": "",
        // },
        // {
        //   "img": "assets/images/playstore.png",
        //   // "url": "https://play.google.com/store/apps/details?id=com.spario.hirerickshaw",
        //   "url": "",
        //   "tooltip": "Playstore",
        // },
        //  {
        //   "img": "assets/images/github.png",
        //   "url": "",
        //   "color":"",
        // }, {
        //   "img": "assets/images/gitlab.png",
        //   "url": "",
        // }
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          // "color": "#FFFFFF",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/java.svg",
          "tooltip": "Java",
        },
      ],
      "detail": HRProject,
    },
    {
      "img": 'assets/images/hrscreens/tc02.webp',
      "title": "Toppers Club",
      "company": "Toppers Club",
      "desc":
          "An educational app that provides live class, video on demand, e-books",
      "links": [
        {
          "img": "assets/svg/info.svg",
          "url": Routers.projectTP,
          "color": white,
          "tooltip": "Show more",
        },
        {
          "img": "assets/images/playstore.png",
          "url": "com.spario.toppersclub",
          "type_url": "package",
          "tooltip": "Playstore",
        },
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/java.svg",
          "tooltip": "Java",
        },
      ],
      "detail": TCProject,
    },
    {
      "img": 'assets/images/android1.png',
      "title": "Indifun",
      "desc": "Social media app with video call, PK options etc.",
      "links": [
        {
          "img": "assets/svg/info.svg",
          "url": Routers.projectIF,
          "color": white,
          "tooltip": "Show more",
        },
        // {
        //   "img": "assets/images/playstore.png",
        //   "url": "",
        //   "tooltip": "Playstore",
        // }
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/java.svg",
          "tooltip": "Java",
        },
      ],
      // "detail": HRProject,
    },
    // Edukrypt
    {
      "img": 'assets/images/hrscreens/tkt001.webp',
      "title": "Toron ki Toli (TKT)",
      "company": "Edukrypt Corporation Pvt Ltd",
      "desc": "Education app for kids",
      "links": [
        // {
        //   "img": "assets/images/location.png",
        //   "url": Routers.projectTTK,
        // },
        {
          "img": "assets/images/playstore.png",
          "url": "com.tkt.inbreakthrough",
          "type_url": "package",
          "tooltip": "Playstore",
        },
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/ios.svg",
          "tooltip": "IOS",
          "color": white,
        },
        {
          "img": "assets/svg/flutter.svg",
          "tooltip": "Flutter",
        },
      ],
    }, //tkt
    {
      "img": 'assets/images/hrscreens/AIA001.webp',
      "title": "AIA",
      "company": "Edukrypt",
      "desc":
          "Educational app, with live and recorded content E-book, practice MCQ",
      "links": [
        // {
        //   "img": "assets/images/hrscreens/AIA001.png",
        //   "url": Routers.projectAIA,
        // },
        {
          "img": "assets/images/playstore.png",
          "url": "com.academyofinternalaudit.aia",
          "type_url": "package",
          "tooltip": "Playstore",
        }
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/flutter.svg",
          "tooltip": "Flutter",
        },
      ],
    },
    /*AIA*/
    {
      "img": 'assets/images/hrscreens/AGC001.webp',
      "title": "Aaditya Gupta Classes",
      "company": "Edukrypt",
      "desc":
          "Educational app, with live and recorded content E-book, practice MCQ",
      "links": [
        {
          "img": "assets/images/playstore.png",
          "url": "com.aadityaguptaclasses",
          "type_url": "package",
          "tooltip": "Playstore",
        }
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/flutter.svg",
          "tooltip": "Flutter",
        },
      ],
    }, /*AGC*/
  ];

  static List projectsMore = [
    {
      "img": 'assets/images/hrscreens/SC001.webp',
      "title": "Smart Board app (android)",
      "desc": "Smart board app",
      "links": [
        {
          "img": "assets/svg/info.svg",
          "url": Routers.projectScribble,
          "color": white,
          "tooltip": "Show more",
        },
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/java.svg",
          "tooltip": "Java",
        },
      ],
      "detail": scribbleProject,
    },
    /* group school*/
    {
      "img": 'assets/images/hrscreens/SCH0001.webp',
      "group": "School ERP",
      "title": "School Parent",
      // "desc": loremIpsum(words: 18),
      "links": [
        {
          "img": "assets/images/playstore.png",
          "url": "com.edukrypt.school.schoolparent",
          "type_url": "package",
          "tooltip": "Playstore",
        },
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/flutter.svg",
          "tooltip": "Flutter",
        },
      ],
    },
    {
      "img": 'assets/images/hrscreens/SCH0002.webp',
      "group": "School ERP",
      "title": "School Teacher",
      // "desc": loremIpsum(words: 18),
      "links": [
        {
          "img": "assets/images/playstore.png",
          "url": "com.educrypt.school_teacher",
          "type_url": "package",
          "tooltip": "Playstore",
        },
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/flutter.svg",
          "tooltip": "Flutter",
        },
      ],
    },
    /* visitor */
    {
      "img": 'assets/images/hrscreens/visitor001.webp',
      "group": "School ERP",
      "title": "Visitor Krypt",
      // "desc": loremIpsum(words: 18),
      "links": [
        {
          "img": "assets/svg/info.svg",
          "url": Routers.projectVisitor,
          "color": white,
          "tooltip": "Show more",
        },
        // {
        //   "img": "assets/images/playstore.png",
        //   "url": "com.edukrypt.school.schoolparent",
        //   "type_url": "package",
        //   "tooltip": "Playstore",
        // },
      ],
      "tags": [
        {
          "img": "assets/images/android2.png",
          "tooltip": "Android",
        },
        {
          "img": "assets/svg/flutter.svg",
          "tooltip": "Flutter",
        },
      ],
      "detail": visitorProject,

    },
    /* group flavour*/
    {
      "img": 'assets/images/hrscreens/flavour001.webp',
      "title": "Flavour",
      "desc": "Resturant food ordering pc application",
      "platform":"desktop",
      "links": [
        {
          "img": "assets/svg/info.svg",
          "url": Routers.projectFlavour,
          "color": white,
          "tooltip": "Show more",
        },
      ],
      "tags": [
        {
          "img": "assets/svg/windows.svg",
          "color":white,
          "tooltip": "windows",
        },
        {
          "img": "assets/svg/flutter.svg",
          "tooltip": "Flutter",
        },
      ],
      "detail": flavourProject,
    },
  ];

  static List flutter = [
    {
      "title": "Home",
    },
    {
      "title": "Container",
    },
    {
      "title": "Card",
    },
    {
      "title": "SingleChildScrollView",
    },
  ];

  static List HRProject = [
    {"image": "assets/images/hrscreens/HR01.webp"},
    {"image": "assets/images/hrscreens/HR02.webp"},
    {"image": "assets/images/hrscreens/HR03.webp"},
    {"image": "assets/images/hrscreens/HR04.webp"},
    {"image": "assets/images/hrscreens/HR05.webp"},
    {"image": "assets/images/hrscreens/HR06.webp"},
    {"image": "assets/images/hrscreens/HR07.webp"},
    {"image": "assets/images/hrscreens/HR08.webp"},
    {"image": "assets/images/hrscreens/HR09.webp"},
  ];

  static List TCProject = [
    {"image": "assets/images/hrscreens/tc01.webp"},
    {"image": "assets/images/hrscreens/tc02.webp"},
    {"image": "assets/images/hrscreens/tc07.webp"},
    {"image": "assets/images/hrscreens/tc03.webp"},
    {"image": "assets/images/hrscreens/tc04.webp"},
    {"image": "assets/images/hrscreens/tc05.webp"},
    {"image": "assets/images/hrscreens/tc06.webp"},
    {"image": "assets/images/hrscreens/tc08.webp"},
  ];

  static List scribbleProject = [
    {"image": "assets/images/hrscreens/SC001.webp"},
    {"image": "assets/images/hrscreens/SC002.webp"},
    {"image": "assets/images/hrscreens/SC003.webp"},
    {"image": "assets/images/hrscreens/SC004.webp"},
    {"image": "assets/images/hrscreens/SC005.webp"},
    {"image": "assets/images/hrscreens/SC006.webp"},
    {"image": "assets/images/hrscreens/SC007.webp"},
    {"image": "assets/images/hrscreens/SC008.webp"},
    {"image": "assets/images/hrscreens/SC009.webp"},
  ];
  static List visitorProject = [
    {"image": "assets/images/hrscreens/visitor001.webp"},
    {"image": "assets/images/hrscreens/visitor002.webp"},
    {"image": "assets/images/hrscreens/visitor003.webp"},
    {"image": "assets/images/hrscreens/visitor005.webp"},
    {"image": "assets/images/hrscreens/visitor007.webp"},
    {"image": "assets/images/hrscreens/visitor008.webp"},
    {"image": "assets/images/hrscreens/visitor009.webp"},
    {"image": "assets/images/hrscreens/visitor010.webp"},
  ];
  static List flavourProject = [
    {"image": "assets/images/hrscreens/flavour001.webp"},
    {"image": "assets/images/hrscreens/flavour002.webp"},
    {"image": "assets/images/hrscreens/flavour003.webp"},
    {"image": "assets/images/hrscreens/flavour004.webp"},
    {"image": "assets/images/hrscreens/flavour005.webp"},
    {"image": "assets/images/hrscreens/flavour006.webp"},
    {"image": "assets/images/hrscreens/flavour007.webp"},
    {"image": "assets/images/hrscreens/flavour008.webp"},
    {"image": "assets/images/hrscreens/flavour009.webp"},
    {"image": "assets/images/hrscreens/flavour010.webp"},
    {"image": "assets/images/hrscreens/flavour011.webp"},
    {"image": "assets/images/hrscreens/flavour012.webp"},
    {"image": "assets/images/hrscreens/flavour013.webp"},
    {"image": "assets/images/hrscreens/flavour014.webp"},
    {"image": "assets/images/hrscreens/flavour015.webp"},
    {"image": "assets/images/hrscreens/flavour016.webp"},
    {"image": "assets/images/hrscreens/flavour017.webp"},
    {"image": "assets/images/hrscreens/flavour021.webp"},
    {"image": "assets/images/hrscreens/flavour022.webp"},
  ];
}
