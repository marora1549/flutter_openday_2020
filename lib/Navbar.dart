import 'package:flutter/material.dart';
import 'package:tiet_openday_website/streams.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  Color fontColor = Color(0xff103C55);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          children: <Widget>[
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Home",
                style: TextStyle(
                  color: fontColor,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Streams()));
              },
              child: Text(
                "Engineering Streams",
                style: TextStyle(color: fontColor),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Meet Thapar Alumni",
                style: TextStyle(color: fontColor),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "FAQs",
                style: TextStyle(color: fontColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  Color fontColor = Color(0xff103C55);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Container(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: fontColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Engineering Streams",
                    style: TextStyle(color: fontColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Meet Thapar Alumni",
                    style: TextStyle(color: fontColor),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
