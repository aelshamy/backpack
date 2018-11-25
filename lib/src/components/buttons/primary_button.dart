import 'package:backpack/src/colors.dart';
import 'package:backpack/src/styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Color color;
  final bool isOutline;
  final bool isFlat;
  final bool isTiny;

  PrimaryButton({
    Key key,
    @required this.onPressed,
    this.text,
    this.textColor = backpackWhite,
    this.color = backpackBlue,
    this.isOutline = false,
    this.isFlat = false,
    this.isTiny = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var minHeight = isTiny ? 29.0 : 45.0;
    var minWidth = isTiny ? 73.0 : 113.0;
    return RawMaterialButton(
      elevation: isFlat ? 0.0 : 2.0,
      constraints: BoxConstraints(minHeight: minHeight, minWidth: minWidth),
      fillColor: isOutline ? null : color,
      textStyle: button.copyWith(color: isOutline ? backpackBlue : textColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: isOutline
            ? BorderSide(
                width: 2.0,
                color: backpackBlue,
              )
            : BorderSide.none,
      ),
      child: Text(text, style: TextStyle(fontFamily: 'Poppins')),
      onPressed: onPressed,
    );
  }
}

class PrimaryIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color fillColor;
  final IconData icon;
  final Color iconColor;
  final double size;

  PrimaryIconButton({
    Key key,
    @required this.onPressed,
    this.fillColor = backpackBlue,
    this.icon = Icons.add,
    this.iconColor = Colors.white,
    this.size = 40.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: iconColor,
      ),
      elevation: 0.0,
      onPressed: onPressed,
      constraints: BoxConstraints(minHeight: size, minWidth: size),
      fillColor: fillColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size)),
    );
  }
}
