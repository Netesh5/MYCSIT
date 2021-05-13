import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 10,
              height: 40,
            ),
            Text(
              "Log in",
              style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 10,
              height: 50,
            ),
            SizedBox(
              child: SignInButton(
                Buttons.Google,
                text: "Login with Google",
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              width: 340,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 300),
              child: Text("Email",
                  style: TextStyle(fontSize: 15, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, right: 270),
              child: Text("Password",
                  style: TextStyle(fontSize: 15, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  color: Colors.blueGrey,
                  child: Text(
                    "Log in",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              width: 340,
              height: 60,
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ? ",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
