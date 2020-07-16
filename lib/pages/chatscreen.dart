import 'dart:wasm';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SingleList(
            userImage: "https://m.cricbuzz.com/a/img/v1/192x192/i1/c170661/virat-kohli.jpg",
            userName: "Philip",
            userLastChat: "Please tell me your full name?",
            userLastChatTime: "21:43 AM",
            userLastUnseenChatCount: "20",
          ),
          Divider(
            indent: 70,
            endIndent: 10,
            color: Colors.grey,
          ),

        ],
      ),
    );
  }
}

class SingleList extends StatelessWidget {
  final String userImage;
  final String userName;
  final String userLastChat;
  final String userLastChatTime;
  final String userLastUnseenChatCount;
  SingleList({
    this.userImage,
    this.userName,
    this.userLastChat,
    this.userLastChatTime,
    this.userLastUnseenChatCount
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ListTile(
        leading: new CircleAvatar(
          backgroundImage: NetworkImage(userImage),
          radius: 25,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(userName,style: TextStyle(fontWeight: FontWeight.bold)),
            Text(userLastChatTime,style: new TextStyle(color: Color(0xff39D770), fontSize: 14.0))
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(userLastChat),
            CircleAvatar(
              child: Text(userLastUnseenChatCount,style: TextStyle(color: Colors.white)),
              backgroundColor: Color(0xff39D770),
              radius: 15,
            )
          ],
        ),

      ),
    );
  }
}

