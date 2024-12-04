import 'dart:async';

import 'package:flutter/material.dart';

class Utils {
  static Color? hexToColor(String? code) {
    if (code == null) {
      return null;
    }
    try {
      return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    } catch (e) {
      return null;
    }
  }

  static String playStore(String package) {
    return "https://play.google.com/store/apps/details?id=${package}";
  }

  static Future<Size> calculateImageDimension(String? str) {
    Completer<Size> completer = Completer();
    if(str!=null) {
      Image image =
      str.startsWith("http") ? Image.network(str) : Image.asset(str);
      image.image.resolve(ImageConfiguration()).addListener(
        ImageStreamListener(
              (ImageInfo image, bool synchronousCall) {
            var myImage = image.image;
            Size size = Size(
                myImage.width.toDouble(), myImage.height.toDouble());
            completer.complete(size);
          },
        ),
      );
    }else{
      completer.complete(Size(0, 0));
    }
    return completer.future;
  }
}
