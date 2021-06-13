import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:MYCSIT/error_handle/dialogbox.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  autherrorDialog _autherrorDialog = autherrorDialog();
  bool _isSigningIn;
  GoogleSignInProvider() {
    _isSigningIn = false;
  }
  bool get isSigningIn => _isSigningIn;
  set isSigningIn(bool isSigningIn) {
    _isSigningIn = isSigningIn;
    notifyListeners();
  }

  Future googleLogIn(BuildContext context) async {
    try {
      isSigningIn = true;
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        isSigningIn = false;
        return;
      } else {
        final googleAuth = await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        isSigningIn = false;
        notifyListeners();
      }
      // ignore: unused_catch_stack
    } on PlatformException catch (error, stackTrace) {
      _autherrorDialog.showDialogg(context, error.message);
    }
  }

  // ignore: non_constant_identifier_names
  void Logout(BuildContext context) async {
    try {
      await googleSignIn.disconnect();
      FirebaseAuth.instance.signOut();
    } catch (error) {
      _autherrorDialog.showDialogg(context, error.message);
    }
  }
}
