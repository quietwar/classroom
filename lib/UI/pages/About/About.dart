import 'package:flutter/material.dart';
import 'package:classroom/UI/Utility/Resources.dart';
import 'package:classroom/UI/Utility/constants.dart';
import 'package:classroom/UI/Widgets/TopBar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(
          child: kBackBtn,
          onPressed: () {
            kbackBtn(context);
          },
          title: string.about,
        ),
        body: Container());
  }
}
