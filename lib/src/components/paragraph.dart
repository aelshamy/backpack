import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;
  final bool isBold;

  Paragraph({Key key, this.text, this.isBold = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: isBold ? FontWeight.bold : null,
        ),
      ),
    );
  }
}
