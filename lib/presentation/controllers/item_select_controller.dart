import 'dart:async';


class ItemSelectController {
  ItemSelectController({this.selected});

  final StreamController<dynamic> controller =
      StreamController<dynamic>.broadcast();
  dynamic selected;

  /*
  * controller.add(12);
  * */
  Sink<dynamic> get inputSink => controller.sink;

  /*
  StreamSubscription<String> l = stream.listen((value) {
      print('Value from controller: $value');
    });
  *
  * */
  Stream<dynamic> get outputStream => controller.stream;

  //Dispose
  void dispose() {
    controller.close();
  }
}
