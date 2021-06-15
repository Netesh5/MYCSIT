import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:MYCSIT/error_handle/dialogbox.dart';
import 'package:package_info/package_info.dart';

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
      }
      // ignore: unused_catch_stack
    } catch (error) {
      _autherrorDialog.showDialogg(context, error.message);
    }
  }

  // ignore: non_constant_identifier_names
  Future logout(BuildContext context) async {
    try {
      await googleSignIn.disconnect();
      FirebaseAuth.instance.signOut();
    } catch (error) {
      _autherrorDialog.showDialogg(context, error.message);
    }
  }
}

class FireStore {
  static FirebaseFirestore store = FirebaseFirestore.instance;
  static saveuserData(User user) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    int buildnumber = int.parse(packageInfo.buildNumber);
    Map<String, dynamic> userData = {
      "name": user.displayName,
      "email": user.email,
      "last_login": user.metadata.lastSignInTime,
      "created_time": user.metadata.creationTime,
      "role": "user",
      "build_number": buildnumber,
      "semester": "semester",
    };
    final userRef = store.collection("user").doc(user.uid);
    if ((await userRef.get()).exists) {
      await userRef.update({
        "last_login": user.metadata.lastSignInTime,
        "build_number": buildnumber,
      });
    } else {
      await userRef.set(userData);
    }
    /* await saveDevice(user); */
  }

  /* static saveDevice(User user) async {
    String deviceId;
    Map<String, dynamic> deviceData;
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final deviceInfo = await deviceInfoPlugin.androidInfo;
      deviceId = deviceInfo.androidId;
      deviceData = {
        "Os_version": deviceInfo.version.sdkInt.toString(),
        "Platform": "android",
        "Model": deviceInfo.model,
        "Device": deviceInfo.device,
      };
    }
    if (Platform.isIOS) {
      final deviceInfo = await deviceInfoPlugin.iosInfo;
      deviceId = deviceInfo.identifierForVendor;
      deviceData = {
        "Os_version": deviceInfo.systemVersion,
        "Platform": "ios",
        "Model": deviceInfo.model,
        "Device": deviceInfo.name,
      };
    }
    final nowMs = DateTime.now();
    final deviceRef = store
        .collection("user")
        .doc(user.uid)
        .collection("devices")
        .doc(deviceId);

    if ((await deviceRef.get()).exists) {
      await deviceRef.update({
        "updated_at": nowMs,
        "uninstalled": false,
      });
    } else {
      await deviceRef.set({
        "created_at": nowMs,
        "updated_at": nowMs,
        "uninstalled": false,
        "id": deviceId,
        "device_info": deviceData,
      });
    }
  } */
}
