import 'package:FlutterProject/classes/chat.dart';
import 'package:flutter/material.dart';

class ChatItemList extends StatelessWidget {
  final Chat chatModel;
  final onTap;
  ChatItemList({@required this.chatModel, this.onTap}) : super();

  @override
  Widget build(BuildContext context) {
    return new Dismissible(
      key: new Key(chatModel.key ?? ""),
      background: new Container(color: Colors.orange),
      secondaryBackground: new Container(color: Colors.yellow),
      onDismissed: (direction) {
        direction == DismissDirection.endToStart
            ? Scaffold.of(context)
                .showSnackBar(new SnackBar(content: new Text("Deleted")))
            : Scaffold.of(context)
                .showSnackBar(new SnackBar(content: new Text("Keept")));
      },
      child: new ListTile(
          leading: new CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.white,
            backgroundImage: new NetworkImage(chatModel.avatarUrl ?? ""),
          ),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                chatModel.name ?? "",
                style: new TextStyle(fontWeight: FontWeight.bold, fontsize: 15),
              ),
              new Text(chatModel.time ?? "",
                  style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal)),
            ],
          ),
          subtitle: new Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: new Text(
                chatModel.message ?? "",
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              )),
          onTap: () {
            debugPrint(chatModel.name + ' pressed');
            onTap(chatModel);
          }),
    );
  }
}
