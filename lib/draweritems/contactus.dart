import 'dart:collection';

import 'package:flutter/material.dart';

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
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset("assets/images/elon.jpg"),
                      borderRadius: BorderRadius.circular(30),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
