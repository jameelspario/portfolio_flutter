import 'package:flutter/material.dart';
import 'package:portfolio/data/datas.dart';
import 'package:portfolio/utils/extensios.dart';
import 'package:portfolio/utils/responsive.dart';

import '../../../controllers/item_select_controller.dart';
import '../../../widgets/drawable_widgets.dart';

class FlutterPages extends StatefulWidget {
  const FlutterPages({super.key});

  @override
  State<FlutterPages> createState() => _FlutterPagesState();
}

class _FlutterPagesState extends State<FlutterPages> {
  final itemSelectController = ItemSelectController();
  final controller = TextEditingController(
   text:  '''
    Container(width:100, height:60, color:Colors.white)
    '''
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryList(
              items: Datas.flutter,
              controller: itemSelectController,
            ),
            16.0.spaceX,
            Flexible(child: DescriptionBody(controller: itemSelectController, txt: controller,)),
          ],
        ));
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList(
      {this.items = const [], required this.controller, super.key});

  final ItemSelectController controller;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: Responsive.width(30, context),
      ),
      child: LayoutBuilder(builder: (context, con) {
        return Card(
          clipBehavior: Clip.antiAlias,
          color: Colors.white12,
          child: StreamBuilder(
              stream: controller.outputStream,
              initialData: Datas.flutter[0]['title'],
              builder: (context, snap) {
                // if (!snap.hasData) {
                //   return Container();
                // }
                print(snap.data);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final it in items)
                      ItemCategory(
                        it: it,
                        selected: snap.data,
                        maxWidth: con.minWidth,
                        callback: () {
                          print(it);

                          controller.inputSink.add(it['title']);
                        },
                      ),
                  ],
                );
              }),
        );
      }),
    );
  }
}

class ItemCategory extends StatelessWidget {
  const ItemCategory(
      {this.it, this.selected, this.maxWidth, this.callback, super.key});

  final dynamic it;
  final dynamic selected;
  final double? maxWidth;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: MyContainer(
        width: maxWidth,
        // constraints: BoxConstraints(
        //   minWidth: Responsive.width(20, context),
        // ),
        // margin: EdgeInsets.symmetric(vertical: 2),
        padding: EdgeInsets.all(4),
        fillColor: selected == it['title'] ? Colors.white24 : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                child: Text(
              "${it['title']}",
              maxLines: 1,
              overflow: TextOverflow.fade,
            )),
            4.0.spaceX,
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionBody extends StatelessWidget {
  const DescriptionBody(
      {required this.controller,
      required this.txt,
      super.key});

  final ItemSelectController controller;
  final TextEditingController txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Container"),
          TextFormField(
            controller: txt,
          ),
        ],
      ),
    );
  }
}
