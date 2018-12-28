import 'package:flutter/material.dart';
import 'package:menudrawerdemo/Screens/call_screen.dart';
import 'package:menudrawerdemo/Screens/camera_screen.dart';
import 'package:menudrawerdemo/Screens/chat_screen.dart';
import 'package:menudrawerdemo/Screens/status_screen.dart';

class WhatAppHome extends StatefulWidget {
  @override
  _WhatAppHomeState createState() => _WhatAppHomeState();
}

class _WhatAppHomeState extends State<WhatAppHome> with SingleTickerProviderStateMixin{
  
  TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(vsync: this, initialIndex:1, length: 4);

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: Icon(Icons.camera_alt)),
              new Tab(text: "CHATS"),
              new Tab(text: "STATUS",),
              new Tab(text: "CALLS",),
            ]
        ),
        actions: <Widget>[Icon(Icons.search),new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),
        Icon(Icons.more_vert)],
      ),

      body: new TabBarView(
        controller: _tabController,
          children:<Widget>[
            new CameraScreen(),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ]
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor:Colors.green,
          child: new Icon(Icons.message,color: Colors.white,),
          onPressed: ()=>print("open chat")),
    );
  }
}


