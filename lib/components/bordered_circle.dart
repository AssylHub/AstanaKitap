import 'package:flutter/material.dart';


class BorderedCircle extends StatelessWidget {
  const BorderedCircle(
      {super.key,
      required this.blueColor,
      this.child,
      this.alignmentGeometry,
      this.top,
      this.bottom,
      this.left,
      this.right});

  final Color blueColor;
  final Widget? child;
  final AlignmentGeometry? alignmentGeometry;
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        width: 360,
        height: 360,
        alignment: alignmentGeometry,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(500),
            border: Border.all(color: blueColor, width: 5)),
        child: child,
      ),
    );
  }
}
