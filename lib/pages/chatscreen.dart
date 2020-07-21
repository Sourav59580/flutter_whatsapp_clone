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
            userName: "Virat Kholi",
            userLastChat: "Please tell me your full name?",
            userLastChatTime: "21:43 PM",
            userLastUnseenChatCount: "20",
          ),
          Divider(
            indent: 70,
            endIndent: 10,
            color: Colors.grey,
          ),
          SingleList(
            userImage: "https://www.usnews.com/dims4/USNEWS/f45ea7c/2147483647/thumbnail/640x420/quality/85/?url=http%3A%2F%2Fmedia.beam.usnews.com%2Fd1%2Fd8%2F8501ba714a21aed9a7327e02ade1%2F180515-10thingselonmusk-editorial.jpg",
            userName: "Elon Musk",
            userLastChat: "I want to contact you.",
            userLastChatTime: "23:43 PM",
            userLastUnseenChatCount: "2",
          ),
          Divider(
            indent: 70,
            endIndent: 10,
            color: Colors.grey,
          ),
          SingleList(
            userImage: "https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X.jpg",
            userName: "Bill Gates",
            userLastChat: "You are so talented.",
            userLastChatTime: "00:40 AM",
            userLastUnseenChatCount: "4",
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

