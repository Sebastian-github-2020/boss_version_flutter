import 'package:flutter/material.dart';

/// 类似flex布局
class ExpandLayout extends StatelessWidget {
  // const RowLayout({Key? key}) : super(key: key);

  const ExpandLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("伸缩盒布局"),
        ),
        body: Container(
          color: Colors.tealAccent,
          height: MediaQuery.of(context).size.height, // 屏幕高度
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: 200,
              ),
              SizedBox(
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(
                        "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.network(
                                  "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",
                                  fit: BoxFit.fill,
                                ),
                              )
                          ),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.network(
                                  "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",
                                  fit: BoxFit.fill,
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
