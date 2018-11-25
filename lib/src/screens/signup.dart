import 'package:backpack/src/components/app_bars/back_app_bar.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:backpack/src/screens/login.dart';
import 'package:backpack/src/components/inputs/password_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Login',
              style: Theme.of(context)
                  .textTheme
                  .body2
                  .copyWith(color: Theme.of(context).primaryColorLight, fontWeight: FontWeight.w700),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Login()),
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
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.person),
                hintText: 'Name',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: PasswordField(
                hintText: 'Password',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: PrimaryButton(
                text: 'Sign up',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
