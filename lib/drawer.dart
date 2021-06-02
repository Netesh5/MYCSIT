import 'package:MYCSIT/loginpage1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'loginpage2.dart';

// ignore: must_be_immutable
class Mydrawer extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User firebaseUser = FirebaseAuth.instance.currentUser;
  Loginpage2 _loginpage2 = Loginpage2();

  String image() {
    if (firebaseUser != null) {
      return firebaseUser.photoURL;
    } else {
      return "https://images.vexels.com/media/users/3/134594/isolated/preview/cb4dd9ad3fa5ad833e9b38cb75baa18a-happy-emoji-emoticon-by-vexels.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.orangeAccent,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.orangeAccent),
                margin: EdgeInsets.zero,
                accountName: Text(
                  firebaseUser.displayName,
                ),
                accountEmail: Text(firebaseUser.email),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(image()),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/homepage");
              },
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/contactus");
              },
              leading: Icon(
                Icons.contact_mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact us",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/feedback");
              },
              leading: Icon(
                Icons.feedback,
                color: Colors.white,
              ),
              title: Text(
                "Feedback",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () async {
                await _auth.signOut();
              },
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "Log out",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
