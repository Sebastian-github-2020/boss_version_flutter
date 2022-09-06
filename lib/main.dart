import 'package:flutter/material.dart';
import './pages/Tabs.dart';
import "./pages/Login/Login.dart";

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
      home: const Login() // 根据 索引 显示指定的 页面
    );
  }
}


