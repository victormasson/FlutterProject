import 'package:flutter/material.dart';
import 'package:FlutterProject/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My first flutter app !",
      theme: new ThemeData(
        primaryColor: Colors.lightGreen,
        accentColor: Colors.limeAccent,
      ),
      home: new HomePage(),
    );
  }
}
