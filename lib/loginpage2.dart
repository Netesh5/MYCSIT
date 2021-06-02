import 'package:MYCSIT/dialogbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Loginpage2 extends StatefulWidget {
  @override
  _Loginpage2State createState() => _Loginpage2State();
}

class _Loginpage2State extends State<Loginpage2> {
  final _formkey = GlobalKey<FormState>();
  String _emailaddress = "", _password = "", _name = "";
  bool _obscuretext = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  autherrorDialog _autherrorDialog = autherrorDialog();
  bool _isLoading = false;

  void _validate() async {
    final _isvalid = _formkey.currentState.validate();
    if (_isvalid) {
      _formkey.currentState.save();
      setState(() {
        _isLoading = true;
      });
      try {
        await _auth
            .createUserWithEmailAndPassword(
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
        child: Form(
          key: _formkey,
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
                height: 20,
              ),
              Text(
                "Or",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text("Name",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                child: TextFormField(
                  key: ValueKey('name'),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter your full name";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter your Full name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onSaved: (value) {
                    _name = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 300),
                child: Text("Email",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
                child: TextFormField(
                  key: ValueKey("emailaddress"),
                  textInputAction: TextInputAction.next,
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
                  key: ValueKey("password"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Password cannot be empty";
                    } else
                      return null;
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
                          : Icons.visibility_off),
                    ),
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
                            "Next",
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
                      Navigator.pushNamed(context, "/loginpage1");
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
      ),
    );
  }
}
