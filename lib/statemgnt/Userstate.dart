import 'package:MYCSIT/auth/googelauth.dart';
import 'package:MYCSIT/homepageitems/homepage.dart';
import 'package:MYCSIT/loginscreens/loginpage1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Userstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            // ignore: missing_return
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);
              if (provider.isSigningIn) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.blueGrey,
                  ),
                );
              } else if (snapshot.hasData) {
                return Homepage();
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    "Something went wrong!",
                    style: TextStyle(fontSize: 16),
                  ),
                );
              } else {
                return Loginpage();
              }
            }),
      ),
    );
  }
}
