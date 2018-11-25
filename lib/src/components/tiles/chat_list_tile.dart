import 'package:backpack/src/components/circular_container.dart';
import 'package:backpack/src/components/tiles/circle_avatar_list_tile.dart';
import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isOnline;

  ChatListTile({Key key, this.title, this.subtitle, this.isOnline = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatarListTile(
      title: title,
      subtitle: subtitle,
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '9:45AM',
            style: Theme.of(context).textTheme.body2.copyWith(color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 7.0),
            child: isOnline
                ? CircularContainer(
                    size: 7.0,
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
