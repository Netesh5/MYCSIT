import 'dart:ui';
import 'package:MYCSIT/dialogbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String _emailaddress = "";
  String _password = "";
  bool _obscuretext = true;
  final _formkey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  autherrorDialog _autherrorDialog = autherrorDialog();

  void _validate() async {
    final _isvalid = _formkey.currentState.validate();
    if (_isvalid) {
      setState(() {
        _isLoading = true;
      });
      _formkey.currentState.save();
      try {
        await _auth
            .signInWithEmailAndPassword(
                email: _emailaddress.toLowerCase().trim(),
                password: _password.trim())
            .then((value) =>
                Navigator.canPop(context) ? Navigator.pop(context) : null);
      } catch (error) {
        _autherrorDialog.showDialogg(context, error.message);
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 10,
              height: 40,
            ),
            Text(
              "My CSIT",
              style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome back!",
              style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 10,
              height: 30,
            ),
            SizedBox(
              child: SignInButton(
                Buttons.Google,
                text: "Continue with Google",
                onPressed: () {
                  _googleSignIn(context);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              width: 340,
              height: 50,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, right: 300),
                    child: Text("Email",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      key: ValueKey("email"),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty || !value.contains("@")) {
                          return "Please enter valid email address";
                        } else
                          return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter your email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onSaved: (value) {
                        _emailaddress = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22, right: 270),
                    child: Text("Password",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty || value.length < 7) {
                          return "Password cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      obscureText: _obscuretext,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscuretext = !_obscuretext;
                              });
                            },
                            child: Icon(_obscuretext
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onSaved: (value) {
                        _password = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: RaisedButton(
                        onPressed: () => _validate(),
                        color: Colors.blueGrey,
                        child: _isLoading
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(
                                "Log in",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/loginpage2");
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final FirebaseAuth _auth2 = FirebaseAuth.instance;
autherrorDialog _autherrorDialog = autherrorDialog();
Future<void> _googleSignIn(BuildContext context) async {
  final googleSignIn = GoogleSignIn();
  final googleAccount = await googleSignIn.signIn();
  if (googleAccount != null) {
    final googleAuth = await googleAccount.authentication;
    if (googleAuth.accessToken != null && googleAuth.idToken != null) {
      try {
        final authResult = await _auth2.signInWithCredential(
            GoogleAuthProvider.credential(
                idToken: googleAuth.idToken,
                accessToken: googleAuth.accessToken));
      } catch (error) {
        _autherrorDialog.showDialogg(context, error.message);
      }
    }
  }
}
