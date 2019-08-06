import 'package:flutter_web/material.dart';
import 'package:myportfolio/view_util/empty_overscroll_behavior.dart';
import 'package:myportfolio/view_util/responsive_widget.dart';

import 'home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ScrollConfiguration(
        behavior: EmptyOverScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: NavHeader(),
              ),
              HeaderImage(),
              SizedBox(height: 24.0),
              InfoParagraphs(),
              SizedBox(height: 48.0),
              WhoAreWeSection()
            ],
          ),
        ),
      ),
    );
  }
}

class InfoParagraphs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 36.0),
            child: getAboutInfoSection("What we do",
                "Build high quality mobile apps and websites.", context),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36.0),
            child: getAboutInfoSection(
                "How do we do it",
                "Leverage the latest advancements in software design/development to build great products without the typical high development costs.\n\nCurrently we use Flutter and Firebase to rapidly build products for our clients.",
                context),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36.0),
            child: getAboutInfoSection(
                "What we believe",
                "Our number one responsibility is to be your ally 🦉.\n\nWe focus on building you the best product at the right price.",
                context),
          ),
        ],
      ),
    );
  }

  Widget getAboutInfoSection(
      String title, String paragraph, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ),
        Container(
          height: 124.0,
          width: 2.0,
          color: Colors.white70,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Text(
              paragraph,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ],
    );
  }
}

class WhoAreWeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      "Who We Are",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          getBioColumn(),
        ],
      ),
    );
  }

  Widget getBioColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: CircleAvatar(
                      radius: 50, backgroundImage: AssetImage("darran_profile.jpeg")),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: CircleAvatar(
                      radius: 50, backgroundImage: AssetImage("sam_profile.jpeg")),
                ),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                child: Text(
                  "Darran Kelinske",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                child: Text(
                  "Sam Harris",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    width: 232.0,
                    child: Text(
                      "Based out of Austin, TX Darran has nearly two decades in designing and deliverying software systems.\n\nHe has worked on software for HEB, Homeaway, FiveStars, and more.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  width: 232.0,
                  child: Text(
                    "Sam has been a developer for 2 months.\n\nHe has worked on software for 7/11, Experian, and more.",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class HeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'About Us',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 48.0),
            ),
            SizedBox(
              height: 28.0,
            ),
            Text(
              "Great tech doesn't have to blow the budget",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
        height: 360.0,
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
            color: Colors.black26,
            backgroundBlendMode: BlendMode.darken,
            image: DecorationImage(
                image: AssetImage("forest_background.jpg"),
                fit: BoxFit.fitWidth)),
      ),
    );
  }
}
