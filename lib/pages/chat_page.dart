import 'package:flutter/material.dart';
import 'package:FlutterProject/classes/chat.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
  final Chat chatModel;

  ChatPage({Key key, @required this.chatModel}) : super(key: key);
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(this.widget.chatModel.name),
      ),
      body: new Center(
        child: new Text(this.widget.chatModel.message),
      ),
    );
  }
}
