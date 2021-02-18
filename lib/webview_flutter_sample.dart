import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_samples/main.dart';

class WebViewFlutterSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.toStringShort()),
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
