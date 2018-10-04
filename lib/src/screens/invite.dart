import 'package:flutter/material.dart';

class Invite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/invite.png',
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    child: Center(
                      child: RawMaterialButton(
                        child: Text('Invite'),
                        onPressed: () {},
                        // constraints: BoxConstraints(minHeight: 0.0),
                        fillColor: Colors.blue.shade700,
                        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        padding: EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Invitations',
              style: Theme.of(context).textTheme.headline,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Ask people to join you on",
                  style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).primaryColorLight),
                ),
                Text(
                  "your trips.",
                  style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).primaryColorLight),
                ),
              ],
            ),
            OutlineButton(
              textColor: Theme.of(context).primaryColor,
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2.0,
              ),
              child: Text(
                'Got it',
                style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).primaryColor),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
