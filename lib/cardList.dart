import 'package:flutter/material.dart';
import 'package:tiet_openday_website/streams.dart';

class CardList extends StatelessWidget {
  Color fontColor = Color(0xff103C55);
  Color red = Color(0xffC41E24);
  List<Widget> pageChildren(
      BuildContext context, double width, double padding) {
    return <Widget>[
      MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Streams()));
        },
        child: Image.asset(
          "assets/images/streams.png",
          width: 250,
        ),
      ),
      MaterialButton(
        onPressed: () {},
        child: Image.asset(
          "assets/images/alumni.png",
          width: 250,
        ),
      ),
      MaterialButton(
        onPressed: () {},
        child: Image.asset(
          "assets/images/helpdesk.png",
          width: 250,
        ),
      ),
      MaterialButton(
        onPressed: () {},
        child: Image.asset(
          "assets/images/faq.png",
          width: 250,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: pageChildren(context, constraints.biggest.width, 20),
          );
        } else {
          return Column(
            children: pageChildren(context, constraints.biggest.width, 0),
          );
        }
      },
    );
  }
}
