import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Navbar.dart';

class CsedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Slider_LMTSM.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Navbar(),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, top: 100, right: 30, bottom: 50),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Department of",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300)),
                          Text("Computer Science and Engineering",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 45,
                                  fontWeight: FontWeight.w900)),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                        "assets/images/manny.jpg",
                                        height: 250)),
                                SizedBox(height: 10),
                                Text("Dr. Mainder Singh",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                Text("msingh@thapar.edu",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.orangeAccent[400],
                                  child: Text(
                                    "Connect",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                              Column(children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                        "assets/images/manny.jpg",
                                        height: 250)),
                                SizedBox(height: 10),
                                Text("Dr. Mainder Singh",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                Text("msingh@thapar.edu",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.orangeAccent[400],
                                  child: Text(
                                    "Connect",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                              Column(children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                        "assets/images/manny.jpg",
                                        height: 250)),
                                SizedBox(height: 10),
                                Text("Dr. Mainder Singh",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                Text("msingh@thapar.edu",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.orangeAccent[400],
                                  child: Text(
                                    "Connect",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ])
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*1.2,
              color: Colors.white,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 30, top: 100, right: 30, bottom: 50),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 100, right: 40, bottom: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                          
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Text("Mission", style: TextStyle(fontSize: 120 , color: Colors.grey[200]), ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                      "Mission",
                                      style: TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),
                                      textAlign: TextAlign.end,
                                    ),
                                ),
                              ],
                            ),
                        
                            SizedBox(height: 30),
                            Text(
                                "The Department of Computer Science and Engineering offers 4-year B.E. programme in Computer Engineering, Computer Science & Engineering and Computer Science & Business Systems. It also offers M.E. in Computer Science and Engineering, M.E. in Software Engineering and MCA. The Department has an active Doctoral programme too.At the undergraduate level, the Department lays emphasis on Software Engineering, Algorithm Analysis and Design, Operating Systems, Computer Graphics, Database and information Systems Engineering and Networking Technologies. The Department provides exposure to emerging technologies as well as futuristic technologies like High Performance Computing, Computer Animation and Gaming, Machine Learning and Data Analytics, Information and Cyber Security and Software Engineering.")
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: -50,
                        left: -100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/slides4.jpg',
                              height: 300,
                            )))
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(FontAwesomeIcons.facebook),
                      SizedBox(width:10),
                      FaIcon(FontAwesomeIcons.instagram),
                         SizedBox(width:10),
                      FaIcon(FontAwesomeIcons.twitter),
                    ],
                  ),
                  Image.asset("assets/images/tilogo.png" , height: 100,),
                  Text("Contact : 9810910960")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
