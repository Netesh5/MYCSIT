import 'package:MYCSIT/drawer.dart';
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
      drawer: Mydrawer(),
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
          padding: EdgeInsets.only(top: 10, left: 20, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi $name!",
                style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text("Good Afternoon ",
                  style: GoogleFonts.notoSans(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: AssetImage("assets/images/2.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: AssetImage("assets/images/3.jpg"),
                          fit: BoxFit.fill),
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
                          alignment: Alignment.center,
                          child: FaIcon(
                            FontAwesomeIcons.chalkboardTeacher,
                            size: 60,
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
                        padding: const EdgeInsets.only(left: 30.0),
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            child: FaIcon(
                              FontAwesomeIcons.book,
                              size: 60,
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
                        padding: const EdgeInsets.only(left: 50.0),
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            child: FaIcon(
                              FontAwesomeIcons.bookOpen,
                              size: 60,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        Text(
                          "Notice Board",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Notes",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text(
                          "Past Questions",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            child: FaIcon(
                              FontAwesomeIcons.shareSquare,
                              size: 60,
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
                        padding: const EdgeInsets.only(top: 30.0, left: 30.0),
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            child: FaIcon(
                              FontAwesomeIcons.phoneSquareAlt,
                              size: 60,
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
                        padding: const EdgeInsets.only(top: 30.0, left: 50.0),
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              size: 60,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        Text(
                          "Resource share",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Contact info",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
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
