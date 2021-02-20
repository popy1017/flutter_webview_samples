import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'main.dart';

class OpacityWebViewSample extends StatefulWidget {
  @override
  _OpacityWebViewSampleState createState() => _OpacityWebViewSampleState();
}

class _OpacityWebViewSampleState extends State<OpacityWebViewSample> {
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.toStringShort()),
      ),
      body: Opacity(
        opacity: isLoaded ? 1 : 0,
        child: WebView(
          initialUrl: url,
          onPageFinished: (_) {
            setState(() {
              isLoaded = true;
            });
          },
        ),
      ),
    );
  }
}
