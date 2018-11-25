import 'package:backpack/src/colors.dart';
import 'package:backpack/src/components/app_bars/right_title_app_bar.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:backpack/src/components/paragraph.dart';
import 'package:flutter/material.dart';

class TermsOfService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RightTitleAppBar(title: 'Terms of Service'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Paragraph(
              text:
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
              isBold: true,
            ),
            Paragraph(
              text:
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
            ),
            Paragraph(
              text:
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PrimaryButton(
                  text: 'Accept',
                  isTiny: true,
                  color: backpackYellow,
                  textColor: backpackBlack,
                  onPressed: () {},
                  isFlat: true,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: PrimaryButton(
                    text: 'Decline',
                    isTiny: true,
                    isOutline: true,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
