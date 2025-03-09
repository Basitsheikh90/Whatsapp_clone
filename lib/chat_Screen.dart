import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            child: Text("B"),
          ),
          title: Text("Basit"),
          subtitle: Text("hey,How are you"),
          trailing: Text("4:45 PM"),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text("H"),
          ),
          title: Text("Hassan"),
          subtitle: Text("Whats,up boys"),
          trailing: Text("1:20 AM"),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text("B"),
          ),
          title: Text('Bilal'),
          subtitle: Text('I will be there in 10 minutes'),
          trailing: Text('4:20 PM'),
        ),
      ],
    );
  }
}
