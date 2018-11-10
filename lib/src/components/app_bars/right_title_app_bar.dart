import 'package:backpack/src/components/app_bars/back_app_bar.dart';
import 'package:flutter/material.dart';

class RightTitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  RightTitleAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackAppBar(
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 35.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
