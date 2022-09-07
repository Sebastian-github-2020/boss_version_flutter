import 'package:flutter/material.dart';


class CardsView extends StatelessWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("卡片"),),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9, // 宽高比
                  child: Image.network(
                      "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",fit: BoxFit.cover,),
                ),
                 ListTile(
                  title: const Text("标题"),
                  subtitle: const Text("ClipOval实现头像"),
                  leading: ClipOval(
                    child: Image.network("https://bkimg.cdn.bcebos.com/pic/a08b87d6277f9e2f0708fd52367bfe24b899a901551f?x-bce-process=image/resize,m_lfit,h_452,limit_1/format,f_auto",width: 60,height: 60,fit: BoxFit.cover,),
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9, // 宽高比
                  child: Image.network(
                      "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",fit: BoxFit.cover,),
                ),
                 const ListTile(
                  title: Text("标题"),
                  subtitle: Text("CircleAvatar实现头像"),
                  leading: CircleAvatar(
                    backgroundImage:  NetworkImage("https://bkimg.cdn.bcebos.com/pic/a08b87d6277f9e2f0708fd52367bfe24b899a901551f?x-bce-process=image/resize,m_lfit,h_452,limit_1/format,f_auto"),
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9, // 宽高比
                  child: Image.network(
                      "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",fit: BoxFit.cover,),
                ),
                 const ListTile(
                  title: Text("标题"),
                  subtitle: Text("CircleAvatar实现头像"),
                  leading: CircleAvatar(
                    backgroundImage:  NetworkImage("https://bkimg.cdn.bcebos.com/pic/a08b87d6277f9e2f0708fd52367bfe24b899a901551f?x-bce-process=image/resize,m_lfit,h_452,limit_1/format,f_auto"),
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9, // 宽高比
                  child: Image.network(
                      "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",fit: BoxFit.cover,),
                ),
                 const ListTile(
                  title: Text("标题"),
                  subtitle: Text("CircleAvatar实现头像"),
                  leading: CircleAvatar(
                    backgroundImage:  NetworkImage("https://bkimg.cdn.bcebos.com/pic/a08b87d6277f9e2f0708fd52367bfe24b899a901551f?x-bce-process=image/resize,m_lfit,h_452,limit_1/format,f_auto"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}