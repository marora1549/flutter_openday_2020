import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  Color fontColor = Color(0xff103C55);
  Color red = Color(0xffC41E24);
  List<Widget> pageChildren(double width, double padding) {
    return <Widget>[
      Padding(
        padding: EdgeInsets.only(left: padding),
        child: Container(
          width: width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "assets/images/tilogo.png",
                    width: 80,
                  ),
                  // Divider(
                  //   // thickness: 5,
                  //   // height: 50.0,
                  //   color: fontColor,
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Thapar Institute",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36.0,
                            color: fontColor),
                      ),
                      // Divider(
                      //                 //   color: Colors.black,
                      //                 // ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Online ",
                            style: TextStyle(fontSize: 36.0, color: red),
                          ),
                          Text(
                            "Open Day",
                            style: TextStyle(
                                fontSize: 36.0,
                                fontWeight: FontWeight.bold,
                                color: red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                "assets/images/horizontal_line.png",
                width: 80,
              ),
              // Divider(
              //   // height: 50.0,
              //   color: fontColor,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Thapar Institute of Engineering",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: fontColor,
                        fontWeight: FontWeight.w600),
                  ),
                  // Divider(
                  //                 //   color: Colors.black,
                  //                 // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "& Technology ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25.0,
                            color: fontColor),
                      ),
                      Text(
                        "WELCOMES YOU",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: red,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 20.0),
      //   child: Image.asset(
      //     "assets/images/tilogo.png",
      //     width: width,
      //   ),
      // )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width, 20),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width, 0),
          );
        }
      },
    );
  }
}
