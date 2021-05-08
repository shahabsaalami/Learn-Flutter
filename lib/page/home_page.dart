import 'package:flutter/material.dart';
import 'package:hone_flutter_skill/list_stories.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    // print(deviceSize);
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
          child: ListStories(),
          height: deviceSize.height * 0.15,
          // height:100.0,
        )
            : new Container();
      },
    );
  }
}