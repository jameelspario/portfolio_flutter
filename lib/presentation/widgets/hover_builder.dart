import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/*
*
HoverBuilder(
  builder: (isHovered) {
    return Text(
      "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
      style: TextStyle(
        color: isHovered ? Colors.white : Colors.grey,
        fontSize: 10,
        fontFamily: 'Poppins',
      ),
    );
  },
)

* */
class HoverBuilder extends StatefulWidget {
  const HoverBuilder({
    required this.builder,
    Key? key,
  }) : super(key: key);

  final Widget Function(bool isHovered) builder;

  @override
  _HoverBuilderState createState() => _HoverBuilderState();
}

class _HoverBuilderState extends State<HoverBuilder> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEnterEvent event) => _onHoverChanged(enabled: true),
      onExit: (PointerExitEvent event) => _onHoverChanged(enabled: false),
      child: widget.builder(_isHovered),
    );
  }

  void _onHoverChanged({required bool enabled}) {
    setState(() {
      _isHovered = enabled;
    });
  }
}