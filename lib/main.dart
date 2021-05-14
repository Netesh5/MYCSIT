import 'package:MYCSIT/homepage.dart';
import 'package:MYCSIT/loginpage2.dart';
import 'package:MYCSIT/notes.dart';
import 'package:MYCSIT/noticeboard.dart';
import 'package:flutter/material.dart';
import 'loginpage1.dart';
import 'pastquestions.dart';
import 'resourceshare.dart';
import 'contactinfo.dart';
import 'google.dart';

void main() {
  runApp(Myapp());
}

// ignore: must_be_immutable
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Loginpage(),
        "/homepage": (context) => Homepage(),
        "/loginpage2": (context) => Loginpage2(),
        "/noticeboard": (context) => Noticeboard(),
        "/notes": (context) => Notes(),
        "/pastquestions": (context) => Pastquestions(),
        "/resourceshare": (context) => Resourceshare(),
        "/contactinfo": (context) => Contactinfo(),
        "/google": (context) => Google(),
      },
    );
  }
}
