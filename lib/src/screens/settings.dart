import 'package:backpack/src/colors.dart';
import 'package:backpack/src/components/app_bars/right_title_app_bar.dart';
import 'package:backpack/src/screens/faq.dart';
import 'package:backpack/src/screens/terms_of_service.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RightTitleAppBar(title: 'Settings'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 2.0,
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    title: Text('Login with Touch ID'),
                    value: true,
                    inactiveTrackColor: backpackGrey2,
                    activeTrackColor: Theme.of(context).primaryColorDark,
                    activeColor: Colors.white,
                    onChanged: (bool value) {},
                  ),
                  ListTile(
                    title: Text('Deactivate account'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Terms of Service'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TermsOfService()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Privacy Policy'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TermsOfService()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('FAQ'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FAQ()),
                      );
                    },
                  )
                ],
              ),
            ),
            Card(
              elevation: 2.0,
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    title: Text('Make my account private'),
                    value: false,
                    inactiveTrackColor: backpackGrey2,
                    activeTrackColor: Theme.of(context).primaryColorDark,
                    activeColor: Colors.white,
                    onChanged: (bool value) {},
                  ),
                  SwitchListTile(
                    title: Text('Enable 2FA'),
                    inactiveTrackColor: backpackGrey2,
                    activeTrackColor: Theme.of(context).primaryColorDark,
                    activeColor: Colors.white,
                    value: true,
                    onChanged: (bool value) {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
