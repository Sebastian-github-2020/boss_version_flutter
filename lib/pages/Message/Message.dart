import 'package:flutter/material.dart';
import '../../MyTool.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyTool? tool = MyTool.instance;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("消息"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: tool?.x(200),
              height: tool?.y(200, 200),
            )
          ],
        ),
      ),
    );
  }
}
