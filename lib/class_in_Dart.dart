
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
bool isLoading = true;

class ClassInDart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Completer<WebViewController> _controller = Completer<WebViewController>();


    return Scaffold(
      appBar: AppBar(
        title: const Text("Whats is Class ?"),
        flexibleSpace: Image(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Completer<WebViewController> _completer = Completer<WebViewController>();

  num indexPosition = 1;

  final key = UniqueKey();

  completeLoading(String A) {
    setState(() {
      indexPosition = 0;
    });
  }

  beginLoading(String A) {
    setState(() {
      indexPosition = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: WebView(
            gestureNavigationEnabled: true,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://shebaabd24.blogspot.com/2022/02/blog-post.html',
            onPageFinished: (finish){
              setState(() {
                isLoading = false;
              });
            },
            onWebViewCreated: ((WebViewController webViewController){
              _completer.complete(webViewController);
            }),
          ),
        ),
        isLoading ? LinearProgressIndicator(color: Colors.blueGrey,):Stack(),
      ],
    );
  }
}


