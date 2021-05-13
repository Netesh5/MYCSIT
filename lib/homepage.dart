import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  var name = "Nitesh";
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
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 30),
        child: Column(
          children: [
            /*  Text(
              "Hi $name!",
              style: GoogleFonts.notoSans(
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text("Good Evening ",
                style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )), */
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
            Column(children: [
              Row(children: [
                Container(
                  child: Icon(
                    Icons.developer_board,
                    size: 70,
                  ),
                ),
              ])
            ])
          ],
        ),
      ),
    );
  }
}
