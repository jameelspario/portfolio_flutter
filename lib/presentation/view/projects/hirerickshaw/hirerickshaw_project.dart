import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';
import 'package:portfolio/utils/responsive.dart';

import '../../../../utils/utils.dart';
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          16.0.spaceY,
          Text(
            "${item['title']}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          item['desc'] == null
              ? Container()
              : Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "${item['desc']}",
                  ),
                ),
          items.isEmpty
              ? Container()
              : FutureBuilder(
                  future: Utils.calculateImageDimension(items.firstOrNull),
                  builder: (context, snap) {
                    if (snap.data == null) {
                      return Container();
                    }

                    double ratio =
                        (snap.data?.width ?? 0) / (snap.data?.height ?? 0);

                    return SizedBox(
                      height: Responsive.height(80, context),
                      child: ScreenshotCarousel(
                        items: items,
                        ratio: ratio,
                      ),
                    );
                  }),
        ],
      ),
    );
  }
}
