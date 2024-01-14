import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensios.dart';

import '../../../utils/const.dart';

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
              Image.asset("${item['img']}"),
              ItemTop(item: item, callLink: callLink,),
              
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "${item['title']}",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        4.0.spaceY,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "${item['desc']}",
            style: Theme.of(context).textTheme.labelSmall,
            maxLines: 3,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        4.0.spaceY,
        Container(
          height: 30.0,
          decoration: BoxDecoration(color: Colors.grey.shade900),
          child: Row(children: [
            const Spacer(),
            for (final it in item['links']) ...[
              GestureDetector(
                onTap: () => callLink?.call(it['url']),
                child: Image.asset(
                  "${it['img']}",
                  width: 12.0,
                  color: it['col'] != null ? Colors.white : null,
                ),
              ),
              6.0.spaceX,
            ],
          ]),
        )
      ],
    );
  }
}
