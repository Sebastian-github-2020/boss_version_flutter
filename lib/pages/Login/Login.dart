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
    Size size = MediaQuery.of(context).size;
    MyTool.getInstance(size.width);
    MyTool? tool = MyTool.instance;
    return Scaffold(
      // appBar: AppBar(),
      // body: Container(
      //     color: const Color.fromRGBO(39, 124, 224, 1),
      //     child: Center(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Container(
      //             height: 119,
      //             // width: 149,
      //             decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage("images/1.png"),
      //                 alignment: Alignment.topLeft,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             color: Colors.white,
      //             width: tool!.x(330),
      //             height: tool.y(330, 382),
      //             child: Column(
      //               children: const [
      //                 TextField(),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     )),
      body: Container(
        color: const Color.fromRGBO(39, 124, 224, 1),
        width: size.width,
        height: size.height,
        child: Padding(
            padding: const EdgeInsets.only(top: 23),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  child: Row(
                    children: [
                      SizedBox(
                        width: tool!.x(149),
                        height: tool.y(149, 119),
                        child: Image.asset("images/1.png"),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  top: 100,
                  left: 20,
                  child: Text(
                    "您好",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                const Positioned(
                  top: 140,
                  left: 20,
                  child: Text(
                    "欢迎查询您的浏览量",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Positioned(
                  top: tool.y(size.width, 215),
                  child: SizedBox(
                    // color: Colors.red,
                    width: size.width,
                    height: tool.y(347, 382),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        width: tool.x(347),
                        height: tool.y(347, 382),
                        child: Column(
                          children:const [
                            Text("登录",style: TextStyle(color: Colors.black,fontSize: 30),),

                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
