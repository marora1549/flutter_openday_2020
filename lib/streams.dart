import 'package:flutter/material.dart';
import 'package:tiet_openday_website/csed.dart';
import 'package:tiet_openday_website/ece.dart';
import 'package:tiet_openday_website/eic.dart';
import 'package:tiet_openday_website/mec.dart';

class Streams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/slides1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child:  Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CsedScreen()),
                            );
                          },
                          child: Image.asset(
                            "assets/images/coe.png",
                            width: 250,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ECEScreen()),
                            );
                          },
                          child: Image.asset(
                            "assets/images/ece.png",
                            width: 250,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EICScreen()),
                            );
                          },
                          child: Image.asset(
                            "assets/images/eic.png",
                            width: 250,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MECScreen()),
                            );
                          },
                          child: Image.asset(
                            "assets/images/civil.png",
                            width: 250,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MECScreen()),
                            );
                          },
                          child: Image.asset(
                            "assets/images/chemical.png",
                            width: 250,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MECScreen()),
                            );
                          },
                          child: Image.asset(
                            "assets/images/mec.png",
                            width: 250,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CsedScreen()),
                            );
                          },
                          child: Image.asset(
                            "assets/images/bio.png",
                            width: 250,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          
        ),
      ),
    );
  }
}
