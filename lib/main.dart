import 'package:flutter/material.dart';


main()=>runApp(const MyApp());

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
      home: Scaffold(
        appBar: AppBar(title: const Text("主页"),),
        // scaffold 附带一个底部tabbar导航
        bottomNavigationBar: _bottomNavigationBar(),
      )
    );
  }

  // 指定 tabbar 列表
  BottomNavigationBar _bottomNavigationBar(){
    return BottomNavigationBar(items: _items());
  }

  List<BottomNavigationBarItem> _items(){
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "主页"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "消息"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "我的"),
    ];
  }
}

