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
                      child: RawMaterialButton(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        constraints: BoxConstraints(minHeight: 0.0),
                        fillColor: Colors.blue.shade700,
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
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
            OutlineButton(
              textColor: Theme.of(context).primaryColor,
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2.0,
              ),
              child: Text(
                'Next',
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
