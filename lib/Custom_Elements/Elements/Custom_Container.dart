import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  AlignmentGeometry? alignment;
  EdgeInsetsGeometry? padding;
  Color? color;
  Decoration? decoration;
  double? width;
  double? height;
  EdgeInsetsGeometry? margin;
  Widget child;

  CustomContainer({
    required this.child,
    this.width,
    this.height,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: decoration,
      color: color,
      alignment: alignment,
      margin: margin,
      child: child,
    );
  }
}
