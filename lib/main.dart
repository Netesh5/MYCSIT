import 'package:MYCSIT/homepage.dart';
import 'package:MYCSIT/loginpage2.dart';
import 'package:flutter/material.dart';
import 'loginpage1.dart';

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
      },
    );
  }
}
