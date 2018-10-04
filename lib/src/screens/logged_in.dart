import 'package:flutter/material.dart';

class LoggedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      type: MaterialType.transparency,
      child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('backpack', style: Theme.of(context).textTheme.title),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                      ),
                      Icon(
                        Icons.adjust,
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome back',
                    style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Image.asset('assets/user.png'),
                  ),
                  Text('Matt', style: Theme.of(context).textTheme.body1),
                  Container(
                    padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.fingerprint,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      'Not you?',
                      style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).primaryColorLight),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
