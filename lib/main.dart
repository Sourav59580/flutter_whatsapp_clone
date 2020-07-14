import 'package:flutter/cupertino.dart';
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
              child: Chat(),
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


class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          InkWell(
            child: ListTile(
              leading: new CircleAvatar(
                backgroundImage: NetworkImage("https://www.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg"),
                radius: 25,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Philip",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("21:43 AM",style: new TextStyle(color: Color(0xff39D770), fontSize: 14.0),),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Please tell me your full name"),
                  CircleAvatar(
                    backgroundColor: Color(0xff39D770),
                    radius: 15,
                    child: Text('20',style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
            onTap: (){},
          ),
          Divider(
            indent: 70,
            endIndent: 10,
            color: Colors.grey,
          ),
          InkWell(
            child: ListTile(
              leading: new CircleAvatar(
                backgroundImage: NetworkImage("https://m.cricbuzz.com/a/img/v1/192x192/i1/c170661/virat-kohli.jpg"),
                radius: 25,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Virat Kholi",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("21:43 AM",style: new TextStyle(color: Color(0xff39D770), fontSize: 14.0),),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Please tell me your full name"),
                  CircleAvatar(
                    backgroundColor: Color(0xff39D770),
                    radius: 15,
                    child: Text('20',style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
            onTap: (){},
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
