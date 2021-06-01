/* import 'package:MYCSIT/dialogbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

autherrorDialog _autherrorDialog = autherrorDialog();

Future<void> googleSignIn(BuildContext context) async {
  final googleSignIn = GoogleSignIn();
  final googleaccount = await googleSignIn.signIn();
  if (googleaccount != null) {
    final googleAuth = await googleaccount.authentication;
    if (googleAuth.accessToken != null && googleAuth.idToken != null) {
      try {
        final authResult = await auth.signInWithCredential(
            GoogleAuthProvider.credential(
                idToken: googleAuth.idToken,
                accessToken: googleAuth.accessToken));
      } catch (error) {
        _autherrorDialog.showDialogg(context, error.message);
      }
    }
  }
}
 */
