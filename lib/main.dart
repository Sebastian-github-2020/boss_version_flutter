import 'package:boss/pages/Layout/RowLayout.dart';
import 'package:flutter/material.dart';
import './pages/Tabs.dart';
import "./pages/Login/Login.dart";
import './pages/Layout/ExpandLayout.dart';
import './pages/Layout/GridLayout.dart';
import './pages/Layout/StackLayout.dart';
import './pages/Cards/CardsView.dart';
import './pages/Layout/WrapLayout.dart';
import './pages/Webview/Webview.dart';

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
      // home: const StackLayout() // 根据 索引 显示指定的 页面
      // home:  WrapLayout() // 根据 索引 显示指定的 页面
      home: const WebViewCom(),
    );
  }
}


