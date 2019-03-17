import 'package:flutter/material.dart';
import 'package:FlutterProject/components/chat_item_list.dart';
import 'package:FlutterProject/pages/chat_page.dart';
import 'package:FlutterProject/classes/chat.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: Chat.generatedData
            .map((chat) => new ChatItemList(
                  onTap: (chatModel) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPage(chatModel: chatModel),
                      ),
                    );
                  },
                  chatModel: chat,
                ))
            .toList(),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message),
        onPressed: () => print("open Chats"),
      ),
    );
  }
}
