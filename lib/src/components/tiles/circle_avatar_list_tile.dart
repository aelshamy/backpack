import 'package:flutter/material.dart';

class CircleAvatarListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget trailing;

  CircleAvatarListTile({Key key, this.title, this.subtitle, this.trailing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
      leading: CircleAvatar(
        backgroundColor: Colors.grey[200],
        radius: 28.0,
      ),
      title: Text(title),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: Theme.of(context).textTheme.body2.copyWith(color: Colors.grey),
            )
          : null,
      trailing: trailing,
    );
  }
}
