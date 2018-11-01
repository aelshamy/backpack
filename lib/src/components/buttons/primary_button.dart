import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  PrimaryButton({Key key, @required this.onPressed, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(text, style: Theme.of(context).textTheme.display3),
      onPressed: onPressed,
    );
  }
}
