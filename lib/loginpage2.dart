import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Loginpage2 extends StatelessWidget {
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
              "Sign up",
              style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Create your account",
              style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 10,
              height: 20,
            ),
            SizedBox(
              child: SignInButton(
                Buttons.Google,
                text: "Sign up with Google",
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              width: 340,
              height: 50,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Name",
                  style: TextStyle(fontSize: 15, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your Full name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 300),
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
                    "Sign up",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              width: 340,
              height: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
