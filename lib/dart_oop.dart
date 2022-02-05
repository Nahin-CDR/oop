
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oop/class_in_Dart.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Dart_OOP extends StatelessWidget {
  const Dart_OOP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart OOP"),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: Text("What is class ?"),
                subtitle: Text("Learn Concept of a class"),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>ClassInDart()));
                }),
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: Text("What is object ?"),
                subtitle: Text("Learn Concept of an object"),
                onTap: (){
                  var route = MaterialPageRoute(builder: (context) => ClassInDart(),);
                  Navigator.push(context, route);
                }),
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: Text("what is OOP ?"),
                subtitle: Text("Learn Concept of oop"),
                onTap: (){
                  var route = MaterialPageRoute(builder: (context) => ClassInDart(),);
                  Navigator.push(context, route);
                }),
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: const Text("Basic rules of OOP"),
                subtitle: const Text("Learn rules of oop "),
                onTap: (){
                  var route = MaterialPageRoute(builder: (context) => ClassInDart(),);
                  Navigator.push(context, route);
                }),
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: const Text("What is Inheritance ?"),
                subtitle: const Text("Learn Concept of inheritance "),
                onTap: (){
                  var route = MaterialPageRoute(builder: (context) => ClassInDart(),);
                  Navigator.push(context, route);
                }),
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: const Text("What is Abstraction ?"),
                subtitle: const Text("Learn Concept of abstraction"),
                onTap: (){
                  var route = MaterialPageRoute(builder: (context) => ClassInDart(),);
                  Navigator.push(context, route);
                }),
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: const Text("What is Polymorphism ?"),
                subtitle: const Text("Learn Concept of polymorphism"),
                onTap: (){
                  var route = MaterialPageRoute(builder: (context) => ClassInDart(),);
                  Navigator.push(context, route);
                }),
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: const Text("What is Encapsulation ?"),
                subtitle: const Text("Learn Concept of encapsulation"),
                onTap: (){
                  var route = MaterialPageRoute(builder: (context) => ClassInDart(),);
                  Navigator.push(context, route);
                }),
            ListTile(
                leading: Image.asset('assets/images/dart_icon.jpg'),
                title: const Text("What is Constructor ?"),
                subtitle: const Text("Learn Concept of constructor"),
                onTap: (){
                  var route = MaterialPageRoute(builder: (context) => ClassInDart(),);
                  Navigator.push(context, route);
                }),


          ],
        ),
      ),
    );
  }
}




