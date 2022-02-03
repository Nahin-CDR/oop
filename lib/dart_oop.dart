
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Dart_OOP extends StatefulWidget {
  const Dart_OOP({Key? key}) : super(key: key);

  @override
  _Dart_OOPState createState() => _Dart_OOPState();
}

class _Dart_OOPState extends State<Dart_OOP> {

  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart OOP"),
      ),
       body: WebView(
         initialUrl: 'https://nahincdr.blogspot.com/2021/02/blog-post.html',
         onWebViewCreated: (WebViewController webViewController) {
           _controller.complete(webViewController);
         },
      ),
    );
  }
}
