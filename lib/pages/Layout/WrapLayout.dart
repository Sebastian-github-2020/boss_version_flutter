import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../Components/MyButton.dart';

/**
 * 流布局
 */

class WrapLayout extends StatelessWidget {
  const WrapLayout({Key? key}) : super(key: key);
  static final List txts = ["诸界第一因", "横推邪灵世界", "修仙", "flutter", "修购", "返回"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("流布局"),
      ),
      body: Wrap(
        spacing: 10, //横轴间距
        runSpacing: 10, // 纵轴 间距
        children: txts
            .map((e) => MyButton(() {
                  if (kDebugMode) {
                    print(e);
                    if (e == "返回") {
                      Navigator.pop(context); // 返回上一个页面
                    }
                  }
                }, e))
            .toList(),
      ),
    );
  }
}
