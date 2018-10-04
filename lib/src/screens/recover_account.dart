import 'package:backpack/src/screens/phone_number.dart';
import 'package:backpack/src/ui/back_app_bar.dart';
import 'package:flutter/material.dart';

class RecoverAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Text(
              'Recover your account',
              style: Theme.of(context).textTheme.headline,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Enter email, username or phone number',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
            ),
            OutlineButton(
              textColor: Theme.of(context).primaryColor,
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2.0,
              ),
              child: Text(
                'Next',
                style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).primaryColor),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneNumber()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
