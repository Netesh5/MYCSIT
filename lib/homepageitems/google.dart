import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Google extends StatefulWidget {
  @override
  _GoogleState createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Search"),
      ),
      body: Stack(
        children: [
          WebView(
            onPageFinished: (url) {
              setState(() {
                _isLoading = false;
              });
            },
            initialUrl: "https://www.google.com/",
            javascriptMode: JavascriptMode.unrestricted,
            allowsInlineMediaPlayback: true,
            gestureNavigationEnabled: true,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
          ),
          _isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.blueGrey,
                  ),
                )
              : Text(""),
        ],
      ),
    );
  }
}
