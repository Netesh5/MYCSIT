import 'dart:ui';
/* import 'package:MYCSIT/error_handle/dialogbox.dart'; */
import 'package:MYCSIT/auth/googelauth.dart';
/* import 'package:firebase_auth/firebase_auth.dart'; */
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
/*   String emailaddress = "";
  String password = "";
  bool _obscuretext = true;
  final _formkey = GlobalKey<FormState>(); */
  /* final FirebaseAuth _auth = FirebaseAuth.instance; */
/*   bool _isLoading = false;
  bool _isLoading2 = false; */

  /* autherrorDialog _autherrorDialog = autherrorDialog(); */

  /* Future<void> _validate() async {
    final _isvalid = _formkey.currentState.validate();
    if (_isvalid) {
      setState(() {
        _isLoading = true;
      });
      _formkey.currentState.save();
      try {
        await _auth
            .signInWithEmailAndPassword(
                email: emailaddress.toLowerCase().trim(),
                password: password.trim())
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
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/images/elon.jpg",
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "CSIT Academy",
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Welcome !",
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Let's Get \nStarted",
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, bottom: 50, right: 50, top: 40),
                            child: SizedBox(
                              height: 50,
                              child: SignInButton(
                                Buttons.Google,
                                text: "Continue with Google",
                                onPressed: () {
                                  final provider =
                                      Provider.of<GoogleSignInProvider>(context,
                                          listen: false);
                                  provider.googleLogIn(context);
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  /* SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Or",
                        style: TextStyle(fontSize: 16),
                      ),
                      Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30, right: 300),
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
                                  emailaddress = value;
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
                                  password = value;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              // ignore: deprecated_member_use
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
              
                                    /*  
                                        Future.delayed(Duration(seconds: 3), () {
                                          setState(() {
                                            _isLoading2 = false;
                                          });
                                        }); */
              
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
                      ), */
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
