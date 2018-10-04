import 'package:flutter/material.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  var actions = const <Widget>[];

  BackAppBar({key, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      brightness: Brightness.light,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: ButtonTheme(
        minWidth: 0.0,
        height: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back_ios),
                  Text(
                    'back',
                    style: Theme.of(context).textTheme.body2,
                  ),
                ],
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            // Your widgets here
          ],
        ),
      ),
      actions: actions,
      backgroundColor: Colors.transparent,
    );
  }

  // TODO: implement preferredSize
  @override
  Size get preferredSize => AppBar().preferredSize;
}
