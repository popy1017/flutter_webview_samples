import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_samples/main.dart';

class FlutterWebViewPluginSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(this.toStringShort()),
      ),
      url: url,
    );
  }
}
