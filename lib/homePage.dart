import 'package:flutter/material.dart';
import 'package:tiet_openday_website/Navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/slides1.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: <Widget>[
            Navbar(),
          ],
        ),
      ),
    );
  }
}
