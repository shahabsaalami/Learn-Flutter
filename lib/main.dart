import 'package:flutter/material.dart';
import 'package:hone_flutter_skill/whatsapp-home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          fontFamily: 'vazir',
          primaryColor: Color(0xff075e54),
          // primaryIconTheme: IconThemeData(
          //   color: Colors.black,
          // ),
          // primaryTextTheme: TextTheme(
          //   title: TextStyle(color: Colors.black),
          // )
      ),
      home: new Directionality(
        textDirection: TextDirection.rtl,
        child: WhatsAppHome(),
      ),
    );
  }
}
