import 'dart:io';

import 'package:boss/pages/Layout/RowLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './pages/Tabs.dart';
import "./pages/Login/Login.dart";
import './pages/Layout/ExpandLayout.dart';
import './pages/Layout/GridLayout.dart';
import './pages/Layout/StackLayout.dart';
import './pages/Cards/CardsView.dart';
import './pages/Layout/WrapLayout.dart';
import './pages/Webview/Webview.dart';

main() {
  runApp(const MyApp());
// 设置状态栏透明
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 状态栏透明
        statusBarBrightness:
            Brightness.light // 白色图标  全局的，可以在单页面中设置 AppBar中brightness
        );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // app主题，必须以此为根节点
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFff4654),
            primary: const Color(0xFFff4654)),
      ),
      // home: const StackLayout() // 根据 索引 显示指定的 页面
      // home:  WrapLayout() // 根据 索引 显示指定的 页面
      //   home: const SafeArea(child: WebViewCom()) ,

      // home: const Login(),
      home: const TabsWidget(),
    );
  }
}
