import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(
        title: "MyFlutterApp",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;
  MyHomePage({this.title});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }

}
  class MyHomePageState extends State<MyHomePage>{
    var counter = 0;
    @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.amber,
          title: new Text(
            widget.title,
          ),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text('You have pushed the button this many times:'),
              new Text(
                '$counter',
                style: Theme.of(context).textTheme.headline2,
              )
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            setState(() {
              ++counter;
            });
          },
          child: Icon(Icons.add),
        ),
      );
  }
}
