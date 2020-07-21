import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SingleCall(
            userImage: "https://m.cricbuzz.com/a/img/v1/192x192/i1/c170661/virat-kohli.jpg",
            userName: "Virat Kholi",
            userLastCallTime: "20 July, 1:06 pm",
          ),
          Divider(
            indent: 70,
            endIndent: 10,
            color: Colors.grey,
          ),
          SingleCall(
            userImage: "https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X.jpg",
            userName: "Bill Gates",
            userLastCallTime: "20 July, 2:06 pm",
          ),
          Divider(
            indent: 70,
            endIndent: 10,
            color: Colors.grey,
          ),
          CallIncoming(
            userImage: "https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X.jpg",
            userName: "Bill Gates",
            userLastCallTime: "20 July, 2:04 pm",
          ),
          Divider(
            indent: 70,
            endIndent: 10,
            color: Colors.grey,
          ),

        ],
      )
    );
  }
}

class SingleCall extends StatelessWidget {
  final String userImage;
  final String userName;
  final String userLastCallTime;
  SingleCall({
    this.userImage,
    this.userName,
    this.userLastCallTime
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
        title: Text(userName,style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Row(
          children: <Widget>[
            Icon(Icons.call_made,color: Color(0xff39D770)),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text(userLastCallTime),
            )
          ],
        ),
        trailing: Icon(Icons.call,color: Color(0xff065B50),),
      ),
    );
  }
}

class CallIncoming extends StatelessWidget {
  final String userImage;
  final String userName;
  final String userLastCallTime;
  CallIncoming({
    this.userImage,
    this.userName,
    this.userLastCallTime
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
        title: Text(userName,style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Row(
          children: <Widget>[
            Icon(Icons.call_received,color: Colors.red),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text(userLastCallTime),
            )
          ],
        ),
        trailing: Icon(Icons.call,color: Color(0xff065B50),),
      ),
    );
  }
}
