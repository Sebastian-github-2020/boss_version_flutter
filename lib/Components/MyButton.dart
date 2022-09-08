import 'package:flutter/material.dart';

/// 按钮组件
///

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const MyButton(this.onPressed, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}
