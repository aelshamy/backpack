import 'package:backpack/src/components/app_bars/back_app_bar.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:backpack/src/screens/profile.dart';
import 'package:backpack/src/screens/recover_account.dart';
import 'package:backpack/src/screens/signup.dart';
import 'package:backpack/src/components/inputs/password_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Sign Up',
              style: Theme.of(context)
                  .textTheme
                  .body2
                  .copyWith(color: Theme.of(context).primaryColorLight, fontWeight: FontWeight.w700),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Email',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: PasswordField(
                hintText: 'Password',
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context)
                      .textTheme
                      .body2
                      .copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w700),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => RecoverAccount()),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
            ),
            PrimaryButton(
              text: 'Log in',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
