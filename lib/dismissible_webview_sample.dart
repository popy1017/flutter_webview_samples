import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_samples/main.dart';

class DismissibleWebViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (_) {
        Navigator.pop(context);
      },
      direction: DismissDirection.down,
      key: Key('DismissibleWebViewSample'),
      child: Scaffold(
        appBar: AppBar(),
        body: WebView(
          initialUrl: url,
        ),
      ),
    );
  }
}
