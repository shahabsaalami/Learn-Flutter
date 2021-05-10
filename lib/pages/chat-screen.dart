import 'package:flutter/material.dart';
import 'package:hone_flutter_skill/models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return new Column(
          children: [
            Divider(height: 5,),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[index].avatarUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dummyData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummyData[index].time,
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  dummyData[index].message,
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
