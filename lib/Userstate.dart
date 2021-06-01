import 'package:MYCSIT/homepage.dart';
import 'package:MYCSIT/loginpage1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Userstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      // ignore: missing_return
      builder: (context, userSnapshot) {
        if (userSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (userSnapshot.connectionState == ConnectionState.active) {
          if (userSnapshot.hasData) {
            return Homepage();
          } else {
            return Loginpage();
          }
        } else if (userSnapshot.hasError) {
          return Center(
            child: Text("Error occured"),
          );
        }
      },
    );
  }
}
