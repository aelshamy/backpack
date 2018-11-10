import 'package:backpack/src/components/tiles/circle_avatar_list_tile.dart';
import 'package:flutter/material.dart';

class FollowersListTile extends StatelessWidget {
  final String title;
  final bool isFollowing;
  final VoidCallback onPressed;

  FollowersListTile({Key key, this.title, this.isFollowing = false, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatarListTile(
      title: title,
      trailing: isFollowing
          ? IconButton(
              icon: Icon(
                Icons.check_circle,
                color: Theme.of(context).primaryColor,
                size: 26.0,
              ),
              onPressed: () {},
            )
          : OutlineButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              textColor: Theme.of(context).primaryColor,
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2.0,
              ),
              child: Text(
                'Follow',
                style: Theme.of(context)
                    .textTheme
                    .display3
                    .copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
    );
  }
}
