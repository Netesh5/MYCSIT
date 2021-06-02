import 'package:MYCSIT/Userstate.dart';
import 'package:MYCSIT/contactus.dart';
import 'package:MYCSIT/feedback.dart';
import 'package:MYCSIT/homepage.dart';
import 'package:MYCSIT/loginpage2.dart';
import 'package:MYCSIT/notes.dart';
import 'package:MYCSIT/notes/firstsem.dart';
import 'package:MYCSIT/noticeboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'loginpage1.dart';
import 'pastquestions.dart';
import 'resourceshare.dart';
import 'contactinfo.dart';
import 'google.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Myapp());
}

// ignore: must_be_immutable
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Object>(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.blueGrey,
            ));
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error occured"),
            );
          }
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
        });
  }
}
