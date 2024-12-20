import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < 20; i++) ...[
            ListTile(
              leading: CircleAvatar(),
              title: Text("Leo"),
              trailing: Text("4:35 PM"),
              subtitle: Text("Hiee"),
            )
          ]
        ],
      ),
    );
  }
}
