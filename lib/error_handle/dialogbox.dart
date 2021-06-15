import 'package:flutter/material.dart';

// ignore: camel_case_types
class autherrorDialog {
  Future<void> showDialogg(BuildContext context, errorDetail) async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: Row(
              children: [
                Icon(Icons.error_outline),
                SizedBox(width: 20),
                Text(
                  "Error occured",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            content: Text(errorDetail),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "ok",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          );
        });
  }

  Future<void> showDialoggg(BuildContext context, provider) async {
    showDialog(
        context: context,
        builder: (dialogContext) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Row(
                children: [
                  Icon(Icons.logout_rounded),
                  SizedBox(width: 20),
                  Text(
                    "Do you want to log out?",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "No",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    provider
                        .logout(context)
                        .then((value) => Navigator.pop(context));
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            );
          });
        });
  }
}
