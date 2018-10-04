import 'package:flutter/material.dart';

class DotsIndicator extends AnimatedWidget {
  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.blue`.
  final Color activeColor;

  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
    this.activeColor: Colors.blue,
  }) : super(listenable: controller);

  // The base size of the dots
  static const double _dotSize = 9.0;

  // The distance between the center of each dot
  static const double _dotSpacing = 20.0;

  Widget _buildDot(int index) {
    return new Container(
      width: _dotSpacing,
      child: new Center(
        child: new Material(
          color: controller.page == index ? activeColor : color,
          type: MaterialType.circle,
          child: new Container(
            width: _dotSize,
            height: _dotSize,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}
