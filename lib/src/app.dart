import 'package:backpack/src/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:backpack/src/colors.dart';
import 'package:backpack/src/screens/onboarding.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: _backpackTheme,
      home: Profile(),
    );
  }
}

final ThemeData _backpackTheme = _buildBackpackTheme();

ThemeData _buildBackpackTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: backpackBlue,
    primaryColorLight: backpackGrey1,
    primaryColorDark: backpackYellow,
    accentColor: backpackWhite,
    scaffoldBackgroundColor: backpackWhite,
    cardColor: backpackWhite,
    textSelectionColor: backpackYellow,
    primaryIconTheme: base.iconTheme.copyWith(color: backpackWhite),
  );
}
