import 'package:flutter/material.dart';
import './pages/Home.dart';
import './pages/Message.dart';
import './pages/Profile.dart';

main()=>runApp( const MyApp());

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // app主题，必须以此为根节点
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabsWidget() // 根据 索引 显示指定的 页面
    );
  }
}


class TabsWidget extends StatefulWidget{
  const TabsWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TabsState();
}

class _TabsState extends State<TabsWidget>{
  var _selectIndex = 0;// 当前默认的tabbar 索引
  List widgets = [const Home(),const Message(),const Profile()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("主页"),),
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
      showSelectedLabels: true, // 显示选择的label
      showUnselectedLabels: false, // 不显示未选中的bar
      type: BottomNavigationBarType.shifting,
    );
  }

  List<BottomNavigationBarItem> _items(){
    return [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          backgroundColor: Colors.deepOrange,
          label: "首页"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.message),
          backgroundColor: Colors.blue,
          label: "消息"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          backgroundColor: Colors.tealAccent,
          label: "我的"),
    ];
  }
}
