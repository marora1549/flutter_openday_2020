import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
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
              onPressed: () {},
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
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Text(
                "Get Started",
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
                      fontFamily: 'Montserrat',
                      color: fontColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  onPressed: () {},
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
              ],
            ),
          )
        ]),
      ),
    );
  }
}
