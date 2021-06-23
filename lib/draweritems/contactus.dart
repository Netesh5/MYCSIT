import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact us"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Card(
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: 380,
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.asset("assets/images/elon.jpg"),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Prasanna Pokharel",
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 30,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 30,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                size: 30,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.github,
                                size: 30,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: 380,
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.asset("assets/images/elon.jpg"),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Nitesh Paudel",
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 30,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 30,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                size: 30,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              child: FaIcon(
                                FontAwesomeIcons.github,
                                size: 30,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
