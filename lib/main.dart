import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: () {
              print('press');
            }),
        title: Text('My App!'),
        actions: [
          IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Find what you want',
              onPressed: () {
                print('search pressed');
              }),
        ],
      ),
      body: new Center(
        child: new Text(
          "Hello Flutter!\nlet`s lunch awesome application",
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'This is a Floating Button',
          child: Icon(Icons.add),
          onPressed: () {}),
    );
  }
}
