import 'package:flutter/material.dart';
import 'package:hone_flutter_skill/page/favorite_page.dart';
import 'package:hone_flutter_skill/page/home_page.dart';
import 'package:hone_flutter_skill/page/plus_page.dart';
import 'package:hone_flutter_skill/page/profille_page.dart';
import 'package:hone_flutter_skill/page/search_page.dart';

/*class MyHomePagesState extends State<MyHomePages> {

  String currentPageName = 'home';
  final Map<String, Widget> children = <String, Widget>{
    'home': HomePage(),
    'search': SearchPage(),
    'plus': PlusPage(),
    'favorite': FavoritePage(),
    'profile': ProfilePage(),

  };
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

  void changePage(String pageName) {
    setState(() {
      currentPageName = pageName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.children[currentPageName],
      appBar: appBar,
      bottomNavigationBar: new Container(
        color: Colors.amber,
        height: 60.0,
        // alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
            IconButton(
                icon: Icon(Icons.home, color: Colors.black87,), onPressed: () {
              changePage('home');
            }),
            IconButton(
                icon: Icon(Icons.search, color: Colors.black87,), onPressed: () {
              changePage('search');
            }),
            IconButton(
                icon: Icon(Icons.add_box, color: Colors.black87,), onPressed: () {
              changePage('plus');
            }),
            IconButton(
                icon: Icon(Icons.favorite, color: Colors.black87,), onPressed: () {
              changePage('favorite');
            }),
            IconButton(icon: Icon(Icons.account_box, color: Colors.black87,),
                onPressed: () {
                  changePage('profile');
                }),
          ],
          ),
        ),
      ),
    );
  }

}*/
class MyHomePages extends StatefulWidget {
  @override
  State createState() {
    return MyHomePagesState();
  }
}

class MyHomePagesState extends State<MyHomePages> {
  int currentPageIndex = 0;
  final List children = [
    new HomePage(),
    new SearchPage(),
    new PlusPage(),
    new FavoritePage(),
    new ProfilePage()
  ];
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

  void changePage(int indexPage) {
    setState(() {
      currentPageIndex = indexPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: this.children[currentPageIndex],
        appBar: appBar,
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'search',
                icon: Icon(
                  Icons.search,
                  color: Colors.black87,
                )),
            BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.home,
                  color: Colors.black87,
                )),
            BottomNavigationBarItem(
                label: 'plus',
                icon: Icon(
                  Icons.add_box,
                  color: Colors.black87,
                )),
            BottomNavigationBarItem(
                label: 'favorite',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black87,
                )),
            BottomNavigationBarItem(
                label: 'profile',
                icon: Icon(
                  Icons.account_box,
                  color: Colors.black87,
                )),    BottomNavigationBarItem(
                label: 'profile',
                icon: Icon(
                  Icons.account_box,
                  color: Colors.black87,
                )),    BottomNavigationBarItem(
                label: 'profile',
                icon: Icon(
                  Icons.account_box,
                  color: Colors.black87,
                )),
          ],
          onTap: changePage,
          currentIndex: currentPageIndex,
        ));
  }
}
