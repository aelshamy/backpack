import 'dart:ui';

import 'package:backpack/src/colors.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:backpack/src/components/circular_container.dart';
import 'package:backpack/src/styles.dart';
import 'package:flutter/material.dart';
import 'package:backpack/src/components/paragraph.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
          leading: CircleAvatar(child: Image.asset('assets/user.png')),
          title: Text('Alex', style: bodyLarge),
          trailing: Text('15th Apr', style: bodySecondary),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 2.0),
                blurRadius: 1.0,
                // spreadRadius: 5.0,
              )
            ],
          ),
          // padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment(0.0, 1.5),
                children: <Widget>[
                  Container(
                    height: 145.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(7.0),
                        topRight: const Radius.circular(7.0),
                      ),
                      image: DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: ExactAssetImage(
                          'assets/berlin.jpg',
                        ),
                      ),
                    ),
                  ),
                  PrimaryButton(
                    textColor: backpackBlack,
                    color: backpackYellow,
                    text: 'Join',
                    isFlat: true,
                    isTiny: true,
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
                        Text('Next trip', style: bodySecondary.copyWith(fontWeight: FontWeight.w700)),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(Icons.directions_car),
                        ),
                        Text(
                          'Berlin',
                          style: bodySecondaryBold,
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: <Widget>[
                                CircularContainer(),
                                Container(
                                  child: CircularContainer(),
                                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                                ),
                                CircularContainer()
                              ],
                            )),
                        Text('Prague', style: bodySecondaryBold)
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: Paragraph(
                        text:
                            'Going on a trip to America, looking for someone to join me on this epic journey through Asian lifestyle.',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Text('Joined by', style: bodySecondary.copyWith(fontWeight: FontWeight.w700)),
                    ),
                    Stack(
                      children: <Widget>[
                        CircularContainer(
                          size: 30.0,
                          hasBorder: true,
                          child: Image.asset(
                            'assets/user.png',
                          ),
                        ),
                        CircularContainer(
                          size: 30.0,
                          hasBorder: true,
                          margin: EdgeInsets.only(left: 15.0),
                          child: Image.asset(
                            'assets/user.png',
                          ),
                        ),
                        CircularContainer(
                          size: 30.0,
                          hasBorder: true,
                          color: backpackYellow,
                          margin: EdgeInsets.only(left: 30.0),
                          child: Center(
                            child: Text('+2', style: bodySecondaryBold),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: backpackGrey1),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        PrimaryIconButton(
                          icon: Icons.favorite,
                          iconColor: Colors.red,
                          fillColor: Colors.transparent,
                          onPressed: () => {},
                        ),
                        PrimaryIconButton(
                          icon: Icons.share,
                          iconColor: Colors.black,
                          fillColor: Colors.transparent,
                          onPressed: () => {},
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: PrimaryButton(
                            textColor: backpackBlack,
                            color: backpackYellow,
                            text: 'Shared',
                            isFlat: true,
                            isTiny: true,
                            onPressed: () {},
                          ),
                        ),
                        PrimaryIconButton(
                          icon: Icons.bookmark,
                          iconColor: backpackGrey2,
                          fillColor: Colors.transparent,
                          onPressed: () => {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
