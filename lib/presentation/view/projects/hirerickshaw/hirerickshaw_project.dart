import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../widgets/carousel.dart';

class HirerickshawProject extends StatelessWidget {
  const HirerickshawProject({
    this.item,
    this.items = const [],
    super.key,
  });

  final dynamic item;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: Colors.black,
      child: SizedBox(
        width: 240,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            16.0.spaceY,
            Text(
              "${item['title']}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("${item['desc']}",),
            ),
            Flexible(
              child: ScreenshotCarousel(
                items: items,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
