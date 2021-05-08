import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {
  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      new Text(
        'stories',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      new Row(
        children: [
          new Text(
            'Watch all',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          new Icon(Icons.play_arrow)
        ],
      )
    ],
  );
  final stories = new Expanded(
    child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 56.0,
                  width: 56.0,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/12217576?v=4"))),
                ),
                index == 0 ? Positioned(
                  // bottom: 0.0,
                  // right: 1.0,
                  child: new CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(
                      Icons.add,
                      size: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ) : Container()
              ],
            );
          },
        )),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
