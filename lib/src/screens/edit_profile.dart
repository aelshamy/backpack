import 'package:backpack/src/components/app_bars/right_title_app_bar.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:backpack/src/components/inputs/password_field.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RightTitleAppBar(title: 'Edit Profile'),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
            color: Colors.grey[300],
            height: 217.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                PasswordField(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Location',
                      prefixIcon: Icon(Icons.location_on),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: PrimaryButton(
                    text: 'Save Changes',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
