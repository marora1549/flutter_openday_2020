import 'package:flutter/material.dart';
import 'package:tiet_openday_website/Navbar.dart';
import 'package:tiet_openday_website/cardList.dart';
import 'package:tiet_openday_website/tiles.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;

import 'landingPage.dart';

class HomePage extends StatelessWidget {
  String viewID = "1";
  @override
  Widget build(BuildContext context) {
    //ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        viewID,
        (int id) => html.IFrameElement()
          ..width = MediaQuery.of(context).size.width.toString()
          ..height = MediaQuery.of(context).size.height.toString()
          ..src = 'assets/maps/index.html'
          ..style.border = 'none');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/slides1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Navbar(),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 9,
                        left: 40.0),
                    child: LandingPage(),
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0.0),
                  //       child: Image.asset(
                  //         "assets/images/alumni.png",
                  //         width: 300,
                  //       ),
                  //     ),
                  //   ],
                  // )
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: CardList(),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/slides1.png'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    /* image: DecorationImage(
                      image: AssetImage('assets/images/timap.png'),
                      fit: BoxFit.cover,
                    ), */
                  ),
                  child: HtmlElementView(
                    viewType: viewID,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
