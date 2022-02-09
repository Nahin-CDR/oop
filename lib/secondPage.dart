
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oop/dart_oop.dart';
import 'package:oop/dart_oops/inheritance.dart';





//Author : Nahin The Coder
//Date : 03-02-2022

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: [
            Container(
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                child: Image.asset('assets/images/bg.png')
            ),
            Flexible(

              child: MyTopics(),
            )
          ],
        )//TopicList(),
    );
  }
}


class MyTopics extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_balance_wallet_outlined),
            title:Text("Dart Programming",style: TextStyle(color: Colors.blue)),
            subtitle: Text("Implementation of OOP in Dart",style: TextStyle(color: Colors.black),),
            // selected: true,
            /* navigate to next page starts */
            onTap: (){
              var route = MaterialPageRoute(builder: (context) => Dart_OOP());
              Navigator.push(context, route);
            },
            /* navigate to next page ends */


          ),


          ListTile(

            leading: Icon(Icons.account_balance_wallet_outlined),
            title:Text("C++ Programming",style: TextStyle(color: Colors.blue)),
            subtitle: Text("Implementation of OOP in C++",style: TextStyle(color: Colors.black)),

            /* navigate to next page starts */
            // onTap: (){
            //   var route = MaterialPageRoute(builder: (context) => HomePage());
            //   Navigator.push(context, route);
            // },
            /* navigate to next page ends */
          ),
        ],
      ),

    );
  }
}