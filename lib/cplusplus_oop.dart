
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oop/cplusplus_oop/abstraction_in_cplusplus.dart';
import 'package:oop/cplusplus_oop/class_in_c.dart';
import 'package:oop/cplusplus_oop/constructor_in_c.dart';
import 'package:oop/cplusplus_oop/encapslation_in_c.dart';
import 'package:oop/cplusplus_oop/inheritance_in_c.dart';
import 'package:oop/cplusplus_oop/object_in_c.dart';
import 'package:oop/cplusplus_oop/polimorphism_in_c.dart';
import 'package:oop/dart_oops/abstraction_in_Dart.dart';
import 'package:oop/dart_oops/class_in_Dart.dart';
import 'package:oop/dart_oops/constructor_in_Dart.dart';
import 'package:oop/dart_oops/encapslation_in_Dart.dart';
import 'package:oop/dart_oops/inheritance.dart';
import 'package:oop/dart_oops/object_in_Dart.dart';
import 'package:oop/dart_oops/polimorphism_in_Dart.dart';
import 'package:webview_flutter/webview_flutter.dart';


class CPlusPlus_OOP extends StatelessWidget {
  const CPlusPlus_OOP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color:Colors.black54 //change your color here
        ),
        title: const Text("C++ OOP",style: TextStyle(
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
              leading: Image.asset('assets/images/num1.png'),
              title: const Text("What is class ?"),
              subtitle: const Text("Learn Concept of a class"),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const ClassInC()));
              }),
          ListTile(
              leading: Image.asset('assets/images/num2.png'),
              title: const Text("What is object ?"),
              subtitle: const Text("Learn Concept of an object"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const ObjectInC(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/num3.png'),
              title: const Text("What is Inheritance ?"),
              subtitle: const Text("Learn Concept of inheritance "),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const InheritanceInC(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/num4.png'),
              title: const Text("What is Abstraction ?"),
              subtitle: const Text("Learn Concept of abstraction"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const AbstractionInC(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/num5.png'),
              title: const Text("What is Polymorphism ?"),
              subtitle: const Text("Learn Concept of polymorphism"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const PolymorphismInC(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/num6.png'),
              title: const Text("What is Encapsulation ?"),
              subtitle: const Text("Learn Concept of encapsulation"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const EncapsulationInC(),);
                Navigator.push(context, route);
              }),
          ListTile(
              leading: Image.asset('assets/images/num7.png'),
              title: const Text("What is Constructor ?"),
              subtitle: const Text("Learn Concept of constructor"),
              onTap: (){
                var route = MaterialPageRoute(builder: (context) => const ConstructorInC(),);
                Navigator.push(context, route);
              }),


        ],
      ),
    );
  }
}




