import 'package:flutter/material.dart';
import 'package:hone_flutter_skill/pages/call-screen.dart';
import 'package:hone_flutter_skill/pages/camera-screen.dart';
import 'package:hone_flutter_skill/pages/chat-screen.dart';
import 'package:hone_flutter_skill/pages/status-screen.dart';

class WhatsAppHome extends StatefulWidget {
  createState() => WhatsAppHomeState();
}

class WhatsAppHomeState extends State with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1,length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 11,
        title: Text('واتساپ'),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: PopupMenuButton(
              onSelected: (choice) {
                print(choice);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Row(
                        children: [Text('گروه نو')],
                        mainAxisAlignment: MainAxisAlignment.end),
                    value: 'newGroup',
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [Text('تنظیمات')],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    value: 'setting',
                  ),
                ];
              },
            ),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt_outlined)),
            Tab(text: 'چت‌ها'),
            Tab(text: 'تماس‌ها'),
            Tab(text: 'وضعیت‌ها'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          CallScreen(),
          StatusScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          print('open chat');
        },
      ),
    );
  }
}
