import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyImage extends StatelessWidget {
  const MyImage(this.svg,
      {this.width, this.height, this.color, this.placeholderBuilder, Key? key})
      : super(key: key);

  const MyImage.asset(
    this.svg, {
    this.width,
    this.height,
    this.color,
    this.placeholderBuilder,
    super.key,
  });

  final String svg;
  final double? width;
  final double? height;
  final Color? color;
  final WidgetBuilder? placeholderBuilder;

  @override
  Widget build(BuildContext context) {
    return svg.endsWith("png") || svg.endsWith("jpeg")
        ? Image.asset(
            svg,
            width: width,
            height: height,
            color: color,
          )
        : svg.startsWith("http") && svg.endsWith("svg")
            ? SvgPicture.network(
                svg,
                width: width,
                height: height,
                colorFilter: color != null
                    ? ColorFilter.mode(color!, BlendMode.srcIn)
                    : null,
                placeholderBuilder: placeholderBuilder,
              )
            : svg.startsWith("http")
                ? Image.network(
                    svg,
                    width: width,
                    height: height,
                    color: color,
                    errorBuilder: (_, __, ___) {
                      return Container(width: width, height: height);
                    },
                  )
                : SvgPicture.asset(
                    svg, width: width, height: height,
                    colorFilter: color != null
                        ? ColorFilter.mode(color!, BlendMode.srcIn)
                        : null,
                    // placeholderBuilder: (BuildContext context) => Container(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: const CircularProgressIndicator(),
                    // ),
                  );
    // return Image(
    //   width: 20,
    //   image: sv.Svg(svg),
    // );
  }
}
