import 'package:flutter/material.dart';
import 'package:whtsappclone/chats.dart';
import 'package:whtsappclone/main.dart';

class WhatsAppDashboard extends StatefulWidget {
  const WhatsAppDashboard({Key? key}) : super(key: key);

  @override
  _WhatsAppDashboardState createState() => _WhatsAppDashboardState();
}

class _WhatsAppDashboardState extends State<WhatsAppDashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          bottomNavigationBar: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: "Chat",
            ),
            Tab(
              icon: Icon(Icons.chat),
              text: "Chat",
            ),
            Tab(
              icon: Icon(Icons.chat),
              text: "Chat",
            ),
            Tab(
              icon: Icon(Icons.chat),
              text: "Chat",
            )
          ]),
          appBar: AppBar(
            actions: [Icon(Icons.abc), Icon(Icons.abc), Icon(Icons.abc)],
            leading: Icon(Icons.abc),
            backgroundColor: Colors.green,
            title: Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
            Chats(),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.yellow,
            )
          ])),
    );
  }
}
