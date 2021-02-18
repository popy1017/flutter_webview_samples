import 'package:flutter/material.dart';
import 'package:webview_samples/webview_flutter_sample.dart';

const String url = 'https://flutter.dev/';

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
