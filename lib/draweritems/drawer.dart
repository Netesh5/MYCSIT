import 'package:MYCSIT/auth/googelauth.dart';
import 'package:MYCSIT/error_handle/dialogbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Mydrawer extends StatefulWidget {
  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  User user = FirebaseAuth.instance.currentUser;
  autherrorDialog _autherroDialog = autherrorDialog();

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
                    user.displayName,
                  ),
                  accountEmail: Text(user.email),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(user.photoURL),
                  )),
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
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                _autherroDialog.showDialoggg(context, provider);
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
