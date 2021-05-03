import 'package:flutter/material.dart';
import 'package:hone_flutter_skill/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryIconTheme: IconThemeData(
            color: Colors.black,
          ),
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black),
          )),
      home: MyHomePages(),
    );
  }
}
