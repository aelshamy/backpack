import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) setState(() => top -= v.scrollDelta / 2);
        },
        child: Stack(
          children: <Widget>[
            //The background
            Positioned(
              top: top,
              child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: Image.asset('assets/profile.jpg'),
              ),
            ),
            //The scroll view
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(25.0),
                    topRight: const Radius.circular(25.0),
                  ),
                ),
                margin: EdgeInsets.only(top: 550.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('125', style: TextStyle(fontWeight: FontWeight.w700)),
                            Text('Folowers'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('150', style: TextStyle(fontWeight: FontWeight.w700)),
                            Text('Following'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('321', style: TextStyle(fontWeight: FontWeight.w700)),
                            Text('Likes'),
                          ],
                        ),
                      ],
                    ),
                    profileCard(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget profileCard(context) {
  return Column(
    children: <Widget>[
      ListTile(
        contentPadding: EdgeInsets.all(0.0),
        leading: CircleAvatar(
          child: Image.asset('assets/user.png'),
        ),
        title: Text(
          'Alex',
          style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w700),
        ),
        trailing: Text(
          '15th Apr',
          style: Theme.of(context).textTheme.body1.copyWith(fontSize: 10.0, color: Theme.of(context).primaryColorLight),
        ),
      ),
      Card(
        elevation: 2.0,
        margin: EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment(0.0, 1.35),
              children: <Widget>[
                Image.asset(
                  'assets/card_top.png',
                  fit: BoxFit.none,
                ),
                RaisedButton(
                  elevation: 0.0,
                  color: Theme.of(context).primaryColorDark,
                  child: Text(
                    'Join',
                    style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Next trip',
                        style: Theme.of(context).textTheme.body2.copyWith(
                              color: Theme.of(context).primaryColorLight,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(Icons.directions_car),
                      ),
                      Text(
                        'Berlin',
                        style: Theme.of(context).textTheme.body2.copyWith(fontWeight: FontWeight.w700),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 5.0,
                                height: 5.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(5.0),
                                    topRight: const Radius.circular(5.0),
                                    bottomLeft: const Radius.circular(5.0),
                                    bottomRight: const Radius.circular(5.0),
                                  ),
                                ),
                              ),
                              Container(
                                width: 5.0,
                                height: 5.0,
                                margin: EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(5.0),
                                    topRight: const Radius.circular(5.0),
                                    bottomLeft: const Radius.circular(5.0),
                                    bottomRight: const Radius.circular(5.0),
                                  ),
                                ),
                              ),
                              Container(
                                width: 5.0,
                                height: 5.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(5.0),
                                    topRight: const Radius.circular(5.0),
                                    bottomLeft: const Radius.circular(5.0),
                                    bottomRight: const Radius.circular(5.0),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Text(
                        'Prague',
                        style: Theme.of(context).textTheme.body2.copyWith(fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Going on a trip to America, looking for someone to join me on this epic journey through Asian lifestyle.',
                      style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).primaryColorLight),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      'Joined by',
                      style: Theme.of(context).textTheme.body2.copyWith(
                            color: Theme.of(context).primaryColorLight,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3.0),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(25.0),
                            topRight: const Radius.circular(25.0),
                            bottomLeft: const Radius.circular(25.0),
                            bottomRight: const Radius.circular(25.0),
                          ),
                        ),
                        child: Image.asset(
                          'assets/user.png',
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        margin: EdgeInsets.only(left: 25.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3.0),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(25.0),
                            topRight: const Radius.circular(25.0),
                            bottomLeft: const Radius.circular(25.0),
                            bottomRight: const Radius.circular(25.0),
                          ),
                        ),
                        child: Image.asset(
                          'assets/user.png',
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        margin: EdgeInsets.only(left: 50.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          border: Border.all(color: Colors.white, width: 3.0),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(25.0),
                            topRight: const Radius.circular(25.0),
                            bottomLeft: const Radius.circular(25.0),
                            bottomRight: const Radius.circular(25.0),
                          ),
                        ),
                        child: Center(
                          child: Text('+2',
                              style: Theme.of(context).textTheme.body2.copyWith(fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Theme.of(context).primaryColorLight),
                  ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Row(
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 0.0,
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          onPressed: () => {},
                        ),
                        MaterialButton(
                          padding: EdgeInsets.all(5.0),
                          minWidth: 0.0,
                          child: Icon(Icons.share),
                          onPressed: () => {},
                        ),
                        MaterialButton(
                          minWidth: 0.0,
                          elevation: 0.0,
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          color: Theme.of(context).primaryColorDark,
                          child: Text(
                            'Shared',
                            style: Theme.of(context).textTheme.body1,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      padding: EdgeInsets.all(1.0),
                      icon: Icon(Icons.bookmark),
                      onPressed: () => {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
