import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  const StackLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("StackLayout"),
      // ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(39, 124, 224, 1),
          ),
          Positioned(
            top: 100,
            child: Image.network(
              "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Center(
            child: Form(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",
                          )
                      )
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "用户名", hintText: "请输入手机号"),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "密码", hintText: "请输入密码"),
                          ),
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("登录")),
                            ),
                          )
                        ],
                      ))),
            ),
          )
          //  Text("aaaaa")
        ],
      ),
    );
  }
}
