import 'package:flutter/material.dart';
import 'package:webview_samples/flutter_inappwebview_sample.dart';
import 'package:webview_samples/flutter_webview_plugin_sample.dart';
import 'package:webview_samples/webview_flutter_plus_sample.dart';
import 'package:webview_samples/webview_flutter_sample.dart';

import 'opacity_webview_sample.dart';

const String url =
    'https://www.kurashiru.com/recipes/7ba2b9a0-52d0-4f88-b19d-a2e101983110';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView Samples'),
      ),
      body: ListView(
        children: [
          _buildListTile(
            context,
            'webview_flutter sample',
            WebViewFlutterSample(),
          ),
          _buildListTile(
            context,
            'webview_flutter with Opacity sample',
            OpacityWebViewSample(),
          ),
          _buildListTile(
            context,
            'flutter_webview_plugin sample',
            FlutterWebViewPluginSample(),
          ),
          _buildListTile(
            context,
            'webview_flutter_plus sample',
            WebViewFlutterPlusSample(),
          ),
          _buildListTile(
            context,
            'flutter_inappwebview sample',
            FlutterInappwebviewSample(),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile(BuildContext context, String title, Widget widget) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () => _moveTo(context, widget),
    );
  }

  void _moveTo(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => widget));
  }
}
