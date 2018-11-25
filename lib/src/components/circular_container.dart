import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double size;
  final Color color;
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final bool hasBorder;
  final double borderWidth;

  CircularContainer({
    Key key,
    this.size = 5.0,
    this.color = Colors.black,
    this.child,
    this.margin,
    this.padding,
    this.hasBorder = false,
    this.borderWidth = 3.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size),
        border: hasBorder ? Border.all(color: Colors.white, width: borderWidth) : null,
      ),
      child: child,
    );
  }
}
