import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatScreenState();
}

class ChatScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeDate.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
	          leading: CircleAvatar(
		          backgroundImage: NetworkImage(fakeDate[i].avatarUrl),
	          ),
	          title: Row(
		          mainAxisAlignment: MainAxisAlignment.spaceBetween,
		          children: <Widget>[
		          	Text(fakeDate[i].name, style: TextStyle(fontWeight: FontWeight.bold)),
			          Text(fakeDate[i].time, style:  TextStyle(fontSize: 14.0, color: Colors.grey  )),
		          ],
	          ),
	          subtitle: Container(
		          padding: EdgeInsets.only(top: 10.0),
		          child: Text(fakeDate[i].message, style: TextStyle(color: Colors.grey, fontSize: 15.0)),
	          ),
          ),
        ],
      ),
    );
  }
}
