import 'package:backpack/src/components/app_bars/back_app_bar.dart';
import 'package:backpack/src/components/tiles/chat_list_tile.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
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
            Material(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.green[200])),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[200])),
                  contentPadding: EdgeInsets.all(12.0),
                  hintText: 'Search by user or places',
                  hintStyle: Theme.of(context).textTheme.body2.copyWith(color: Colors.grey),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0, bottom: 10.0),
              child: Text(
                'Chats',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            ChatListTile(
              title: 'Alex',
              subtitle: 'Hey when are you going?',
              isOnline: true,
            ),
            ChatListTile(
              title: 'Sandra',
              subtitle: 'I would love to take this trip with ...',
            ),
            ChatListTile(
              title: 'Lisa',
              subtitle: 'Sure, lets do it.',
            ),
            ChatListTile(
              title: 'Mike',
              subtitle: 'Yes, it was an amazing experience',
            ),
            ChatListTile(
              title: 'Jennifer',
              subtitle: 'Loved it out there.',
            ),
            ChatListTile(
              title: 'Travis',
              subtitle: "Can't wait to do it again",
            ),
            ChatListTile(
              title: 'Lisa',
              subtitle: 'Sure, lets do it.',
            ),
            ChatListTile(
              title: 'Sandra',
              subtitle: 'I would love to take this trip with ...',
            ),
            ChatListTile(
              title: 'Mike',
              subtitle: 'Yes, it was an amazing experience',
            ),
            ChatListTile(
              title: 'Alex',
              subtitle: 'Hey when are you going?',
            ),
          ],
        ),
      ),
    );
  }
}
