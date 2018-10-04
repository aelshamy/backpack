import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final Key fieldKey;
  final String hintText;
  final String labelText;
  final String helperText;

  PasswordField({
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
  });
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 30.0, bottom: 10.0),
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        suffixIcon: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
