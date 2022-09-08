import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../MyTool.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // static const Color loginColor = Color.fromRGBO(255, 70, 84, 1);
  // static const Color loginColor = Color(0xFFff4654);

  @override
  Widget build(BuildContext context) {
    //初始化 工具类
    Size size = MediaQuery
        .of(context)
        .size;
    MyTool.getInstance(size.width);
    MyTool? tool = MyTool.instance;
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: tool!.y(size.width, 182),
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Image.asset("images/login.png")],
                ),
              ),
              SizedBox(
                height: tool.y(size.width, 132),
                width: size.width,
              ),
              Container(
                color: Colors.white,
                child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "用户名",

                            hintText: "请输入手机号",
                            prefixIcon: Icon(
                              Icons.person,

                            ),
                            // focusedBorder: UnderlineInputBorder(
                            //   borderSide:
                            //   BorderSide(color: loginColor),
                            // ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "密码",


                            hintText: "请输入密码",
                            prefixIcon: Icon(Icons.lock),
                            // focusedBorder: UnderlineInputBorder(
                            //   borderSide:
                            //   BorderSide(color: loginColor),
                            // ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          obscureText: true, // 密码框
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "立即注册",
                                  style: TextStyle(
                                      color: Color.fromRGBO(134, 134, 134, 1)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "忘记密码",
                                  style: TextStyle(
                                      color: Color.fromRGBO(134, 134, 134, 1)),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                            width: size.width,
                            height: tool.y(size.width, 50),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(tool.y(size.width, 50))),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          tool.y(size.width, 50)),
                                    ),
                                    // side: const BorderSide(
                                    //     width: 2,
                                    //     color: loginColor),
                                    primary: Colors.white,
                                    // backgroundColor: loginColor
                                ),
                                child: const Text("登录")))
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
