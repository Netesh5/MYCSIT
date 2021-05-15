import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var name = "Nitesh";
  int _selectedItem = 0;
  void _ontap(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.face,
            size: 40.0,
          ),
          Padding(padding: EdgeInsets.only(right: 30)),
        ],
        elevation: 0.0,
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback),
            label: "Feedback",
          ),
        ],
        currentIndex: _selectedItem,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 16),
        onTap: _ontap,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 30),
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text(
                  "Hi $name!",
                  style: GoogleFonts.notoSans(
                    textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ),
                ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text("Good Evening ",
                    style: GoogleFonts.notoSans(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ), 
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 8),
                            child: FaIcon(
                              FontAwesomeIcons.chalkboardTeacher,
                              size: 60,
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black)),
                          width: 100,
                          height: 100,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/noticeboard");
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: InkWell(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: FaIcon(
                                FontAwesomeIcons.book,
                                size: 60,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.black)),
                            width: 100,
                            height: 100,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/notes");
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: InkWell(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 15),
                              child: FaIcon(
                                FontAwesomeIcons.bookOpen,
                                size: 60,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.black)),
                            width: 100,
                            height: 100,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/pastquestions");
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 5.0),
                        child: Text(
                          "Notice Board",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 61.0),
                        child: Text(
                          "Notes",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 50.0),
                        child: Text(
                          "Past Questions",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: InkWell(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10, left: 18),
                              child: FaIcon(
                                FontAwesomeIcons.shareSquare,
                                size: 60,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.black)),
                            width: 100,
                            height: 100,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/resourceshare");
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 25.0),
                        child: InkWell(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 22),
                              child: FaIcon(
                                FontAwesomeIcons.phoneSquareAlt,
                                size: 60,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.black)),
                            width: 100,
                            height: 100,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/contactinfo");
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 25.0),
                        child: InkWell(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                size: 60,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.black)),
                            width: 100,
                            height: 100,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/google");
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Resource share",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 30.0),
                        child: Text(
                          "Contact info",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 60.0),
                        child: Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
