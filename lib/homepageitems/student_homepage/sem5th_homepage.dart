import 'package:MYCSIT/draweritems/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class Homepage5 extends StatefulWidget {
  @override
  _Homepage5State createState() => _Homepage5State();
}

class _Homepage5State extends State<Homepage5> {
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  int _selectedItem = 0;
  void _ontap(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        ],
        currentIndex: _selectedItem,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 16),
        onTap: _ontap,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Hi! " + user.displayName,
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(greeting(),
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ),
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          child: Hero(
                            tag: "noticeboard",
                            child: Column(
                              children: [
                                Container(
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
                                SizedBox(height: 15),
                                Text("Notice Board",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/noticeboard");
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Container(
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
                            SizedBox(height: 15),
                            Hero(
                              tag: "notes",
                              child: Text("Notes",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/notes");
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: InkWell(
                          child: Column(
                            children: [
                              Container(
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
                              SizedBox(height: 15),
                              Hero(
                                tag: "pastQuestions",
                                child: Text("Past Questions",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/pastquestions");
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 20),
                        child: InkWell(
                          child: Hero(
                            tag: "resourceshare",
                            child: Column(
                              children: [
                                Container(
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
                                SizedBox(height: 15),
                                Text("Resource share",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/resourceshare");
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                        ),
                        child: InkWell(
                          child: Column(
                            children: [
                              Container(
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
                              SizedBox(height: 15),
                              Hero(
                                tag: "contactinfo",
                                child: Text(
                                  "Contact Info",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/contactinfo");
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, right: 20.0),
                        child: InkWell(
                          child: Hero(
                            tag: "google",
                            child: Column(
                              children: [
                                Container(
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
                                SizedBox(height: 15),
                                Text("Google",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/google");
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
