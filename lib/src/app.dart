import 'package:backpack/src/colors.dart';
import 'package:backpack/src/screens/faq.dart';
import 'package:backpack/src/screens/onboarding.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: _backpackTheme,
      // home: OnBording(),
      home: FAQ(),
    );
  }
}

final ThemeData _backpackTheme = _buildBackpackTheme();

ThemeData _buildBackpackTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: backpackBlue,
    primaryColorLight: backpacGrey1,
    primaryColorDark: backpackYellow,
    accentColor: backpackWhite,
    scaffoldBackgroundColor: backpackWhite,
    cardColor: backpackWhite,
    textSelectionColor: backpackYellow,
    textTheme: _buildBackpackTextTheme(base.textTheme),
    primaryTextTheme: _buildBackpackTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildBackpackTextTheme(base.accentTextTheme),
    primaryIconTheme: base.iconTheme.copyWith(color: backpackWhite),
    // buttonColor: backpackBlue,
    // buttonTheme: base.buttonTheme.copyWith(
    //   padding: EdgeInsets.symmetric(vertical: 55.0),
    //   // textTheme: ButtonTextTheme.accent,
    //   // padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    // ),
  );
}

TextTheme _buildBackpackTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w900,
          fontSize: 40.0,
        ),
        title: base.title.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
        ),
        body1: base.body1.copyWith(
          fontSize: 14.0,
        ),
        body2: base.body2.copyWith(
          fontSize: 12.0,
        ),
        button: base.button.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
        display1: base.button.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
        display2: base.display2.copyWith(
          fontSize: 12.0,
        ),
        display3: base.display3.copyWith(
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Poppins',
        displayColor: backpackWhite,
        bodyColor: backpackBlack,
      );
}
