import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hone_flutter_skill/list_stories.dart';

class HomePage extends StatelessWidget {
  final instaPost = new Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Row(children: [
              Container(
                margin: EdgeInsets.only(left: 8.0),
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/12217576?v=4"),
                  ),
                ),
              ),
              Text(
                "شهاب سلامی",
                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Vazir'),
              )
            ]),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: null,
            ),
          ],
        ),
      ),
      Row(
        children: [
          new Expanded(
            child: Image.network(
              "https://flutter.dev/images/catalog-widget-placeholder.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print('pressed');
                  },
                  child: Padding(
                    child: Icon(FontAwesomeIcons.heart),
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('pressed');
                  },
                  child: Padding(
                    child: Icon(FontAwesomeIcons.comment),
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('pressed');
                  },
                  child: Padding(
                    child: Icon(FontAwesomeIcons.bookmark),
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                  ),
                ),
              ],
            ),
            IconButton(icon: Icon(FontAwesomeIcons.bookmark), onPressed: null)
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text("این پست را علی و 5001 نفر دیگر لایک کرده اند"),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              margin: EdgeInsets.only(right: 12.0 , left: 5.0),
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/12217576?v=4"))),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "مقدار کامنت را وارد کنید"
                ,border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text("۵۵ روز قبل" , style: TextStyle(color: Colors.grey),),)
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    // print(deviceSize);
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                child: ListStories(),
                height: deviceSize.height * 0.15,
                // height:100.0,
              )
            : instaPost;
      },
    );
  }
}