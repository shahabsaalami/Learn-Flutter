import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final appBar = AppBar(
    backgroundColor: Color(0xfffafafa),
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    centerTitle: true,
    title: SizedBox(
      height: 45.0,
      // width: 100.0,
      child: Image.asset("assets/images/instagram_logo.png"),
    ),
    actions: [
      new Padding(
        padding: EdgeInsets.only(right: 16.0),
        child: Icon((Icons.send)),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: new Container(
        color: Colors.amber,
        height: 60.0,
        // alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home ,color:Colors.black87,), onPressed: null),
              IconButton(icon: Icon(Icons.search ,color:Colors.black87,), onPressed: null),
              IconButton(icon: Icon(Icons.add_box ,color:Colors.black87,), onPressed: null),
              IconButton(icon: Icon(Icons.favorite ,color:Colors.black87,), onPressed: null),
              IconButton(icon: Icon(Icons.account_box ,color:Colors.black87,), onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}