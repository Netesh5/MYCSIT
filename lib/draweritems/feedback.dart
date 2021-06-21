import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Type your suggestion",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Center(
              child: Text("Send"),
            ),
          ),
        ],
      ),
    );
  }
}
