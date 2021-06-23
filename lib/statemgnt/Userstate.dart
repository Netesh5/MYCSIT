import 'package:MYCSIT/auth/googelauth.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/admin_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/student_homepage/sem1st_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/student_homepage/sem2nd_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/student_homepage/sem3rd_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/normal_user_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/student_homepage/sem4th_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/student_homepage/sem5th_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/student_homepage/sem6th_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/student_homepage/sem7th_homepage.dart';
import 'package:MYCSIT/homepageitems/role_based_homepage/student_homepage/sem8th_homepage.dart';
import 'package:MYCSIT/loginscreens/loginpage1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Userstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder<User>(
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
                FireStore.saveuserData(snapshot.data);
                return StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("user")
                      .doc(snapshot.data.uid)
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasData) {
                      final user = snapshot.data;
                      if (user["role"] == "admin") {
                        return AdminHomepage();
                      } else if (user["role"] == "student") {
                        if (user["semester"] == "one") {
                          return Homepage1();
                        } else if (user["semester"] == "two") {
                          return Homepage2();
                        } else if (user["semester"] == "three") {
                          return Homepage3();
                        } else if (user["semester"] == "four") {
                          return Homepage4();
                        } else if (user["semester"] == "five") {
                          return Homepage5();
                        } else if (user["semester"] == "six") {
                          return Homepage6();
                        } else if (user["semester"] == "seven") {
                          return Homepage7();
                        } else if (user["semester"] == "eight") {
                          return Homepage8();
                        }
                      } else {
                        return NormalHomepage();
                      }
                    }
                    return Material(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                );
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
