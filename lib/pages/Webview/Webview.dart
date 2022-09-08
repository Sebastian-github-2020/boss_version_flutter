import 'dart:io';

import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebViewCom extends StatelessWidget {
  const WebViewCom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if (Platform.isAndroid) {
    //   SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
    //       statusBarColor: Color(0xFFff4654), // 状态栏透明
    //       statusBarBrightness:
    //       Brightness.light // 白色图标  全局的，可以在单页面中设置 AppBar中brightness
    //   );
    //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    // }

    print("访问老板端");
    // TODO: implement build
    return Scaffold(
      body: Container(
          color: Colors.red,
          child:  WebView(
              initialUrl: "https://hubeixiangxiang.com/lottoryboss/#/",
              javascriptMode: JavascriptMode.unrestricted,
              // onPageStarted:(String url){
              //   print("加载的URl$url");
              // },
              onPageFinished:(String url){
               if(url!="https://hubeixiangxiang.com/lottoryboss/#/"){
                 if (Platform.isAndroid) {
                   SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
                       statusBarColor: Color(0xFFff4654), // 状态栏透明
                       statusBarBrightness:
                       Brightness.light // 白色图标  全局的，可以在单页面中设置 AppBar中brightness
                   );
                   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
                 }
               }
              }
          ),
      ),
    );
  }
}
