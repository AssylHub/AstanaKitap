import 'package:flutter/material.dart';



class CircleButton extends StatelessWidget {
  CircleButton(
      {super.key,
      required this.blueColor,
      this.child,
      this.boxConstraints = const BoxConstraints(
        minWidth: 100,
        minHeight: 100,
      ),
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.onPressed
      
      });

  final Color blueColor;
  final Widget? child;
  late final BoxConstraints boxConstraints;
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      right: right,
      left: left,
      child: RawMaterialButton(
        fillColor: blueColor,
        constraints: boxConstraints,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
