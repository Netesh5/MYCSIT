import 'package:flutter/material.dart';

class Contactinfo extends StatefulWidget {
  @override
  _ContactinfoState createState() => _ContactinfoState();
}

class _ContactinfoState extends State<Contactinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact info",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
    );
  }
}
