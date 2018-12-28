import 'package:flutter/material.dart';
import 'package:menudrawerdemo/dashboard.dart';
import 'package:menudrawerdemo/whatapphome.dart';
import 'package:camera/camera.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff250366),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: WhatAppHome(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
      ),
      drawer: new Drawer(
        child: ListView(
         children: <Widget>[

           UserAccountsDrawerHeader(
             accountName: Text("Prashant Gaurav"),
             accountEmail: Text("prashantgaurav270@gmail.com"),
             currentAccountPicture: CircleAvatar(
               backgroundColor: Colors.white,
             ),
           ),
           ListTile(
             title: Text("Dashboard"),
             trailing: Icon(Icons.dashboard),
             onTap:(){
               Navigator.of(context).pop();
               Navigator.of(context).push(MaterialPageRoute(
                   builder: (BuildContext context)=> Dashboard()));
             },
           ),
           Divider(),
           ListTile(
             title: Text("Profile"),
             trailing: Icon(Icons.supervised_user_circle),
             onTap:(){
               Navigator.of(context).pop();
               Navigator.of(context).push(MaterialPageRoute(
                   builder: (BuildContext context)=> Dashboard()));
             },
           ),
         ],
        ),
      ),
    );
  }
}
