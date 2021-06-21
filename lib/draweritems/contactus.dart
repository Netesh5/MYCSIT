import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                height: 600,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset("assets/images/elon.jpg"),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Prasanna Pokharel",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.facebook,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(width: 20),
                        InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.instagram,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.twitter,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.github,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
