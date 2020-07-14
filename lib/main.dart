import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
            )
          ],
          backgroundColor: Color(0xFF065B50),
          elevation: 0.7,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS",),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Text("Camera"),
            ),
            Container(
              child: Text("Chat"),
            ),
            Container(
              child: Text("Status"),
            ),
            Container(
              child: Text("Calls"),
            ),
          ],
        ),
      ),
    ),
  ));
}
