import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../MyTool.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //初始化 工具类
    MyTool.getInstance(MediaQuery.of(context).size.width);
    MyTool? tool = MyTool.instance;
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
          color: const Color.fromRGBO(39, 124, 224, 1),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 119,
                  // width: 149,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/1.png"),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: tool!.x(330),
                  height: tool.y(330, 382),
                  child: Column(
                    children: const [
                      TextField(),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
