import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView布局"),
      ),
      body: GridView.count(
        crossAxisCount: 3, // 一行有几个
        childAspectRatio: 1,// 缩放

        children: [
          Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vmz1gfj20u011i0ux.jpg"),
          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg"),
          ),

          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vmz1gfj20u011i0ux.jpg"),
          ),  Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vmz1gfj20u011i0ux.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg"),
          ),

          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vmz1gfj20u011i0ux.jpg"),
          ),  Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vmz1gfj20u011i0ux.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg"),
          ),

          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child:Image.network("https://tva1.sinaimg.cn/large/e91ed61fly1g183vmz1gfj20u011i0ux.jpg"),
          ),
        ],
      ),
    );
  }
}
