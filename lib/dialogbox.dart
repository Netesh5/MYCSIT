import 'package:flutter/material.dart';

// ignore: camel_case_types
class autherrorDialog {
  Future<void> showDialogg(BuildContext context, errorDetail) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
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
}
