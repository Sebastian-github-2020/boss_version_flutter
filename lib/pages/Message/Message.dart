import 'package:flutter/material.dart';

class Message extends StatelessWidget{
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children:const [
          Text("消息")
        ],
      ),
    );
  }
}