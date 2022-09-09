import 'package:flutter/material.dart';
// import '../../MyTool.dart';
import '../../Components/MyListTile.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MyTool? tool = MyTool.instance;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("消息"),
      ),
      body: ListView(
        children: const [
          MyListTile("布局", "Column纵向布局"),
          MyListTile("布局", "Expand flex伸缩盒布局"),
          MyListTile("布局", "Grid网格布局"),
          MyListTile("布局", "Row横向布局"),
          MyListTile("布局", "Stack 绝对定位"),
          MyListTile("布局", "Wrap 流式布局"),
        ],

      ),
    );
  }
}
