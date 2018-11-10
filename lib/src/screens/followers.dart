import 'package:backpack/src/components/app_bars/back_app_bar.dart';
import 'package:backpack/src/components/tiles/followers_list_tile.dart';
import 'package:flutter/material.dart';

class Followers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'Followers',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.0, bottom: 20.0),
              child: Text(
                '125 People are following Lisa',
                style: Theme.of(context).textTheme.display2.copyWith(color: Colors.grey),
              ),
            ),
            FollowersListTile(
              title: 'Alex',
              onPressed: () {},
            ),
            FollowersListTile(
              title: 'Sandra',
              onPressed: () {},
            ),
            FollowersListTile(
              title: 'Lisa',
              onPressed: () {},
            ),
            FollowersListTile(
              title: 'Mike',
              onPressed: () {},
            ),
            FollowersListTile(
              title: 'Jennifer',
              isFollowing: true,
              onPressed: () {},
            ),
            FollowersListTile(
              title: 'Travis',
              onPressed: () {},
            ),
            FollowersListTile(
              title: 'Lisa',
              onPressed: () {},
              isFollowing: true,
            ),
            FollowersListTile(
              title: 'Sandra',
              onPressed: () {},
            ),
            FollowersListTile(
              title: 'Mike',
              onPressed: () {},
            ),
            FollowersListTile(
              title: 'Alex',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
