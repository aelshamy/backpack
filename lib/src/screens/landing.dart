import 'package:backpack/src/colors.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:backpack/src/screens/login.dart';
import 'package:backpack/src/screens/signup.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      type: MaterialType.transparency,
      child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'backpack',
                      style: Theme.of(context).textTheme.headline.copyWith(
                            color: Theme.of(context).primaryColorDark,
                          ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                    ),
                    Icon(
                      Icons.adjust,
                      color: Theme.of(context).primaryColorDark,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Travel with people. Make new friends.',
                    style: Theme.of(context).textTheme.display2,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PrimaryButton(
                  text: 'Sign up',
                  textColor: backpackBlue,
                  color: backpackWhite,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: PrimaryButton(
                    text: 'Log in',
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
