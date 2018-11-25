import 'package:backpack/src/components/buttons/primary_button.dart';
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
                      child: PrimaryButton(
                        text: 'Invite',
                        isTiny: true,
                        onPressed: () {},
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
            PrimaryButton(
              text: 'Got it',
              isOutline: true,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
