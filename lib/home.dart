import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class Home extends StatefulWidget {
	@override
	State<StatefulWidget> createState() => _HomeState();
}
class _HomeState extends State with SingleTickerProviderStateMixin{
	TabController _tabController;
	//initState for starting page when opening app
	@override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text("Şatsap"),
		    bottom: TabBar(
			    controller: _tabController,
			    indicatorColor: Colors.white,
			    tabs: <Widget>[
			    	Tab(icon: Icon(Icons.camera_alt)),
				    Tab(text: "Chat"),
				    Tab(text: "Status"),
				    Tab(text: "Call"),
			    ],
		    ),
		    actions: <Widget>[
		    	Icon(Icons.search),
			    Icon(Icons.more_vert),
		    ],
	    ),
	    body: TabBarView(
			controller: _tabController,
		    children: <Widget>[
		    	Text("Camera page"),
		    	ChatScreen(),
		    	StatusScreen(),
		    	CallScreen(),
		    ],
	    ),
	    floatingActionButton: FloatingActionButton(
		    backgroundColor: Theme.of(context).accentColor,
		    child: Icon(Icons.message, color: Colors.white),
		    onPressed: () => print("Chats page"),
		    
	    ),
    );
  }
	
}