import 'package:MYCSIT/statemgnt/Userstate.dart';
import 'package:MYCSIT/draweritems/contactus.dart';
import 'package:MYCSIT/draweritems/feedback.dart';
import 'package:MYCSIT/homepageitems/homepage.dart';
import 'package:MYCSIT/loginscreens/loginpage2.dart';
import 'package:MYCSIT/homepageitems/notes.dart';
import 'package:MYCSIT/homepageitems/noticeboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:MYCSIT/loginscreens/loginpage1.dart';
import 'homepageitems/pastquestions.dart';
import 'homepageitems/resourceshare.dart';
import 'homepageitems/contactinfo.dart';
import 'homepageitems/google.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

// ignore: must_be_immutable
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
          elevation: 0,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      routes: {
        "/": (context) => Userstate(),
        "/loginpage1": (context) => Loginpage(),
        "/homepage": (context) => Homepage(),
        "/loginpage2": (context) => Loginpage2(),
        "/noticeboard": (context) => Noticeboard(),
        "/notes": (context) => Notes(),
        "/pastquestions": (context) => Pastquestions(),
        "/resourceshare": (context) => Resourceshare(),
        "/contactinfo": (context) => Contactinfo(),
        "/google": (context) => Google(),
        "/contactus": (context) => Contactus(),
        "/feedback": (context) => FeedBack(),
      },
    );
  }
}
