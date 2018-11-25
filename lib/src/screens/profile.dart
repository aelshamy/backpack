import 'package:backpack/src/components/backdrop.dart';
import 'package:backpack/src/components/profile_card.dart';
import 'package:backpack/src/styles.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

Widget backPanel = Container(
  // decoration: BoxDecoration(
  //   image: DecorationImage(
  //     image: ExactAssetImage('assets/profile.jpg'),
  //     fit: BoxFit.cover,
  //   ),
  // ),
  child: Positioned(
    top: 0,
    child: ConstrainedBox(
      constraints: BoxConstraints(),
      child: Image.asset('assets/profile.jpg'),
    ),
  ),
);

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Backdrop(
      backPanel: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/profile.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      frontPanel: Container(
        padding: EdgeInsets.all(10.0),
        child: ProfileCard(),
      ),
      frontPanelHeader: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('125', style: bodyLarge.copyWith(fontSize: 18.0)),
                  Text('Folowers', style: bodySecondary),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('150', style: bodyLarge.copyWith(fontSize: 18.0)),
                  Text('Following', style: bodySecondary),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('321', style: bodyLarge.copyWith(fontSize: 18.0)),
                  Text('Likes', style: bodySecondary),
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
