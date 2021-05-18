import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Google extends StatefulWidget {
  @override
  _GoogleState createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Search"),
      ),
      body: WebView(
        initialUrl: "https://www.google.com/",
        javascriptMode: JavascriptMode.unrestricted,
        allowsInlineMediaPlayback: true,
      ),
    );
  }
}
