import 'package:flutter/material.dart';
import '../../Components/MyListTile.dart';
import '../Layout/Index.dart';


class Message extends StatelessWidget {
  static final List _pages = [
    {"title":"布局","subTitle":"Column纵向布局","widget":const ColumnLayout()},
    {"title":"布局","subTitle":"Row横向布局","widget":const RowLayout()},
    {"title":"布局","subTitle":"Expand flex伸缩盒布局","widget":const ExpandLayout()},
    {"title":"布局","subTitle":"Stack Positioned绝对定位布局","widget":const StackLayout()},
    {"title":"布局","subTitle":"Grid 网格布局","widget":const GridLayout()},
    {"title":"布局","subTitle":"Wrap 流式布局","widget": const WrapLayout()},
  ];
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MyTool? tool = MyTool.instance;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("消息"),
      ),
      body: ListView.builder(
          itemCount: _pages.length,
          // itemExtent: 50, //强制设置高度50
          itemBuilder: (item, index) {

            return MyListTile(_pages[index]["title"], _pages[index]["subTitle"],_pages[index]["widget"]);
          }
          ),
    );
  }
}
