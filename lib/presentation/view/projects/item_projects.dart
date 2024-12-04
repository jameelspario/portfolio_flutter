import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';
import 'package:portfolio/utils/utils.dart';

import '../../../utils/const.dart';
import '../../widgets/my_image.dart';

class ItemProject extends StatelessWidget {
  const ItemProject({this.item, this.callLink, super.key});

  final dynamic item;
  final Function(dynamic it)? callLink;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 280,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Const.colorHeader, borderRadius: BorderRadius.circular(5.0)),
        width: 250,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(
                "${item['img']}",
                fit: BoxFit.contain,
              ),
              ItemTop(
                item: item,
                callLink: callLink,
              ),
            ],
          ),
        ));
  }
}

class ItemTop extends StatelessWidget {
  const ItemTop({this.item, this.callLink, super.key});

  final dynamic item;
  final Function(dynamic it)? callLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900.withOpacity(0.4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: Text(
              "${item['title']}",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          item['company'] == null
              ? Container()
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                  child: Text(
                    "@${item['company'] ?? ""}",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.white70, fontSize: 10.0),
                    maxLines: 3,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
          item['desc'] == null
              ? Container()
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                  child: Text(
                    "${item['desc']}",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.white70),
                    maxLines: 3,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
          4.0.spaceY,
          Container(
            height: 30.0,
            decoration:
                BoxDecoration(color: Colors.grey.shade900.withOpacity(0.4)),
            child: Row(children: [
              for (final it in (item['tags'] ?? [])) ...[
                6.0.spaceX,
                Tooltip(
                  message: "${it['tooltip'] ?? ""}",
                  child: MyImage.asset(
                    "${it['img']}",
                    width: 12.0,
                    color: Utils.hexToColor(it['color']),
                  ),
                )
              ],
              const Spacer(),
              for (final it in (item['links'] ?? [])) ...[
                GestureDetector(
                  onTap: () => callLink?.call(it),
                  child: Tooltip(
                    message: "${it['tooltip'] ?? ""}",
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: MyImage.asset(
                        "${it['img']}",
                        width: 12.0,
                        color: Utils.hexToColor(it['color']),
                      ),
                    ),
                  ),
                ),
                6.0.spaceX,
              ],
            ]),
          )
        ],
      ),
    );
  }
}
