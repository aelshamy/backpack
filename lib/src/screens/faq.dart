import 'package:backpack/src/components/app_bars/right_title_app_bar.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  FAQState createState() => FAQState();
}

class FAQState extends State<FAQ> {
  List<ExpansionPanel> itemsList = <ExpansionPanel>[
    ExpansionPanel(
      isExpanded: true,
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
        child: Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.'),
      ),
      headerBuilder: (BuildContext context, bool isExpanded) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text('How does this app protect my privacy?'),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RightTitleAppBar(title: 'FAQs'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                // itemsList[index].isExpanded = !isExpanded;
              },
              children: itemsList,
            )
          ],
        ),
      ),
    );
  }
}
