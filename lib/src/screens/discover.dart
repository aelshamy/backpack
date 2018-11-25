import 'package:backpack/src/colors.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
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
                  'assets/discover.png',
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    child: Center(
                      child: PrimaryButton(
                        text: 'Join',
                        isTiny: true,
                        color: backpackYellow,
                        textColor: backpackBlack,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Discover',
              style: Theme.of(context).textTheme.headline,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Discover where people are going, and",
                  style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).primaryColorLight),
                ),
                Text(
                  "join them on their trips.",
                  style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).primaryColorLight),
                ),
              ],
            ),
            PrimaryButton(
              text: 'Next',
              isOutline: true,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
