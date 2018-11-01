import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final Key fieldKey;
  final String hintText;
  final String labelText;
  final String helperText;
  final Widget prefixIcon;

  PasswordField({
    this.fieldKey,
    this.hintText = 'Password',
    this.labelText,
    this.helperText,
    this.prefixIcon = const Icon(Icons.lock),
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
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(
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
    );
  }
}
