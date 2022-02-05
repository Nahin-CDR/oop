
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ClassInDart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Completer<WebViewController> _controller = Completer<WebViewController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("what is class"),
      ),
      body:WebView(
        initialUrl: 'https://shebaabd24.blogspot.com/2022/02/blog-post.html',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}




//
// class ClassInDart extends StatefulWidget {
//   final String Name;
//   const ClassInDart(
//       {Key? key,
//         required this.Name,
//       }) : super(key: key);
//
//   @override
//   _ClassInDartState createState() => _ClassInDartState();
// }
//
// class _ClassInDartState extends State<ClassInDart> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: WebPortion(),
//     );
//   }
// }
//
// class WebPortion extends StatefulWidget {
//   const WebPortion({Key? key}) : super(key: key);
//
//   @override
//   _WebPortionState createState() => _WebPortionState();
// }
//
// class _WebPortionState extends State<WebPortion> {
//
//   Completer<WebViewController> _controller = Completer<WebViewController>();
//   @override
//   Widget build(BuildContext context) {
//
//
//   }
// }