import 'package:backpack/src/components/app_bars/right_title_app_bar.dart';
import 'package:flutter/material.dart';

class NewItem {
  bool isExpanded;
  final Widget header;
  final Widget body;
  NewItem({this.isExpanded, this.header, this.body});
}

class FAQ extends StatefulWidget {
  @override
  FAQState createState() => FAQState();
}

class FAQState extends State<FAQ> {
  List<NewItem> itemsList;
  @override
  void initState() {
    super.initState();

    itemsList = <NewItem>[
      NewItem(
        isExpanded: false,
        header: Text(
          'How does this app protect my privacy?',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        body: Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
          style: TextStyle(fontSize: 12.0),
        ),
      ),
      NewItem(
        isExpanded: false,
        header: Text(
          'How does this app protect my privacy?',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        body: Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
          style: TextStyle(fontSize: 12.0),
        ),
      ),
      NewItem(
        isExpanded: false,
        header: Text(
          'How does this app protect my privacy?',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        body: Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
          style: TextStyle(fontSize: 12.0),
        ),
      ),
      NewItem(
        isExpanded: false,
        header: Text(
          'How does this app protect my privacy?',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        body: Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
          style: TextStyle(fontSize: 12.0),
        ),
      ),
      NewItem(
        isExpanded: false,
        header: Text(
          'How does this app protect my privacy?',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        body: Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
          style: TextStyle(fontSize: 12.0),
        ),
      ),
      NewItem(
        isExpanded: false,
        header: Text(
          'How does this app protect my privacy?',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        body: Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
          style: TextStyle(fontSize: 12.0),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RightTitleAppBar(title: 'FAQs'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  itemsList[index].isExpanded = !isExpanded;
                });
              },
              children: itemsList.map((NewItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      child: item.header,
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                    child: item.body,
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
