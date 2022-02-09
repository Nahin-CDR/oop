



import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:oop/custom_error/no_internet.dart';
import 'package:webview_flutter/webview_flutter.dart';
bool isLoading = true;

class EncapsulationInDart extends StatelessWidget {
  const EncapsulationInDart({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Completer<WebViewController> _controller = Completer<WebViewController>();


    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color:Colors.black54 //change your color here
        ),
        title: const Text("Encapsulation",style: TextStyle(
            color:Colors.black54
        ),),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body:  Builder(
        builder: (BuildContext context) {
          return OfflineBuilder(connectivityBuilder: (BuildContext context,ConnectivityResult connectivity, Widget child) {
            final bool connected = (connectivity != ConnectivityResult.none); //true or false
            return Stack(
              fit: StackFit.expand,
              children: [
                child,
                Positioned(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      child: connected ?const Home():NoInternet(),
                    )
                ),
              ],
            );
          },
            child: const Center(
              child: Text("Loading..."),
            ),
          );
        },
      ),
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
          //margin: EdgeInsets.all(0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:  WebView(
            gestureNavigationEnabled: true,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://shebaabd24.blogspot.com/2022/02/encapsulation-in-dart.html',
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
        isLoading ? const LinearProgressIndicator(color: Colors.blueGrey,):Stack(),
      ],
    );
  }
}


