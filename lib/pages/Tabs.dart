import 'package:flutter/material.dart';
import 'Home/Home.dart';
import 'Message/Message.dart';
import 'Profile/Profile.dart';
import 'News/News.dart';
import '../MyTool.dart';


class TabsWidget extends StatefulWidget{
  const TabsWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TabsState();
}

class _TabsState extends State<TabsWidget>{
  var _selectIndex = 0;// 当前默认的tabbar 索引
  List widgets = [const Home(),const Message(),const News(),const Profile()];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // scaffold 附带一个底部tabbar导航
      bottomNavigationBar:_bottomNavigationBar(),
      body: widgets[_selectIndex],
    );
  }


  // 指定 tabbar 列表
  BottomNavigationBar _bottomNavigationBar(){
    return BottomNavigationBar(items: _items(),onTap: (int index){
      // 点击事件 切换 tabbar 更改索引
      _selectIndex=index;
      setState((){
        _selectIndex=index;
      });
    },
      currentIndex: _selectIndex, // 指定 tabbar 的索引
      selectedFontSize: 16, // 设置选中的 tabbar字体大小
      // showSelectedLabels: true, // 显示选择的label
      // showUnselectedLabels: false, // 不显示未选中的bar
      type: BottomNavigationBarType.fixed,   // 四个以上 会变白 这里调整为fixed
      // backgroundColor: Colors.blue,
    );
  }

  List<BottomNavigationBarItem> _items(){
    return [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          // backgroundColor: Colors.blue,
          label: "首页"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "消息"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: "资讯"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "我的"),
    ];
  }
}
