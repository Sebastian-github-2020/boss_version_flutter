import 'package:flutter/material.dart';
import '../../Components/MyButton.dart';

/**
 * 流布局
 */

class WrapLayout extends StatelessWidget {
  WrapLayout({Key? key}) : super(key: key);
  final List txts = ["诸界第一因", "横推邪灵世界", "修仙", "flutter", "修购"];

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
        children: txts.map((e) => MyButton(() {}, e)).toList(),
      ),
    );
  }
}
