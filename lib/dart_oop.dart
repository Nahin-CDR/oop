
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oop/dart_oops/abstraction_in_Dart.dart';
import 'package:oop/dart_oops/class_in_Dart.dart';
import 'package:oop/dart_oops/constructor_in_Dart.dart';
import 'package:oop/dart_oops/encapslation_in_Dart.dart';
import 'package:oop/dart_oops/inheritance.dart';
import 'package:oop/dart_oops/object_in_Dart.dart';
import 'package:oop/dart_oops/polimorphism_in_Dart.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Dart_OOP extends StatelessWidget {
  const Dart_OOP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color:Colors.black54 //change your color here
        ),
        title: const Text("Dart OOP",style: TextStyle(
            color: Colors.black54
        ),),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,

        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          ListTile(
              leading: Image.asset('assets/images/dart_icon.jpg'),
              title: const Text("What is class ?"),
              subtitle: const Text("Learn Concept of a class"),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>ClassInDart()));
              }),
          ListTile(
              leading: Image.asset('assets/images/dart_icon.jpg'),
              title: const Text("What is object ?"),
              subtitle: const Text("Learn Concept of an object"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => ObjectInDart(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/dart_icon.jpg'),
              title: const Text("What is Inheritance ?"),
              subtitle: const Text("Learn Concept of inheritance "),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const InheritanceInDart(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/dart_icon.jpg'),
              title: const Text("What is Abstraction ?"),
              subtitle: const Text("Learn Concept of abstraction"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const AbstractionInDart(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/dart_icon.jpg'),
              title: const Text("What is Polymorphism ?"),
              subtitle: const Text("Learn Concept of polymorphism"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const PolymorphismInDart(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/dart_icon.jpg'),
              title: const Text("What is Encapsulation ?"),
              subtitle: const Text("Learn Concept of encapsulation"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const EncapsulationInDart(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/dart_icon.jpg'),
              title: const Text("What is Constructor ?"),
              subtitle: const Text("Learn Concept of constructor"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => ConstructorInDart(),);
                Navigator.push(context, route);
              }),


        ],
      ),
    );
  }
}




