import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:webview_samples/main.dart';

class WebViewFlutterPlusSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.toStringShort()),
      ),
      body: WebViewPlus(
        initialUrl: url,
      ),
    );
  }
}
