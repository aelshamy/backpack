import 'package:backpack/src/screens/add_trips.dart';
import 'package:backpack/src/screens/discover.dart';
import 'package:backpack/src/screens/invite.dart';
import 'package:backpack/src/screens/landing.dart';
import 'package:backpack/src/ui/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBording extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = <Widget>[
      AddTrips(),
      Discover(),
      Invite(),
    ];

    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 100.0, bottom: 50.0),
          child: PageView(
            children: _pages,
            controller: _pageController,
          ),
        ),
        Positioned(
          top: 52.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Center(
              child: DotsIndicator(
                controller: _pageController,
                itemCount: _pages.length,
                color: Colors.grey.shade300,
                onPageSelected: (int page) {
                  _pageController.animateToPage(
                    page,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          top: 52.0,
          right: 10.0,
          child: Container(
            child: FlatButton(
              child: Text(
                'Skip',
                style: Theme.of(context)
                    .textTheme
                    .body2
                    .copyWith(color: Theme.of(context).primaryColorLight, fontWeight: FontWeight.w700),
              ),
              highlightColor: Colors.grey.shade100,
              splashColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Landing()),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
