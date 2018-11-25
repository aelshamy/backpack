import 'package:backpack/src/components/app_bars/back_app_bar.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Text(
              'Your phone number',
              style: Theme.of(context).textTheme.headline,
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                labelStyle: TextStyle(color: Colors.black),
                hintText: '+1 (123) 456-7890',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
            ),
            PrimaryButton(
              isOutline: true,
              text: 'Next',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
