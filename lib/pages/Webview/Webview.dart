import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebViewCom extends StatelessWidget {
  const WebViewCom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("webview"),
      // ),
      body: Container(
      color: Colors.red,
        child:  const WebView(
        initialUrl: "https://www.bilibili.com/",
        javascriptMode: JavascriptMode.unrestricted),
      ),
    );
  }
}
