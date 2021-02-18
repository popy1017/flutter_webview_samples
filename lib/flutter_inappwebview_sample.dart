import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_samples/main.dart';

class FlutterInappwebviewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.toStringShort()),
      ),
      body: InAppWebView(
        initialUrl: url,
      ),
    );
  }
}
