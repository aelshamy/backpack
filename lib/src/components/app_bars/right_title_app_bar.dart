import 'package:flutter/material.dart';

class RightTitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  RightTitleAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.all(14.0),
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
