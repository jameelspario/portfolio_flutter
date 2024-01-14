import 'package:flutter/material.dart';

class MyAnim extends StatefulWidget {
  const MyAnim({this.child, required this.callback, super.key});
  final Widget? child;
  final VoidCallback callback;

  @override
  State<MyAnim> createState() => _MyAnimState();
}
 
class _MyAnimState extends State<MyAnim> {
   double elevation = 4.0;
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      onHover: (value) {
        if (value) {
          setState(() {
            elevation = 20.0;
            scale = 1.05;
          });
        } else {
          setState(() {
            elevation = 0.0;
            scale = 1.0;
          });
        }
      },
      child: Transform.scale(
        scale: scale,
        child: Material(
          elevation: elevation,
          child: widget.child
        ),
      ),
    );
  }
}