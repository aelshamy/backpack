import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class AddTrips extends StatelessWidget {
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
                  'assets/trips.png',
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    child: Center(
                      child: PrimaryIconButton(
                        icon: Icons.add,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Add trips',
              style: Theme.of(context).textTheme.headline,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Easily add your create your trip,",
                  style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).primaryColorLight),
                ),
                Text(
                  "and let people know where you're heading.",
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
