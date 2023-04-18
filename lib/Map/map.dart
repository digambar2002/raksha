import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  final String link = 'https://www.google.com/maps';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Map Screen'),
      // ),
      body: WebviewScaffold(url: link),
    );
  }
}
