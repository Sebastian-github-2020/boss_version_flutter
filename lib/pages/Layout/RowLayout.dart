import 'package:flutter/material.dart';
import '../../Components/IconContainer.dart';

class RowLayout extends StatelessWidget {
  // const RowLayout({Key? key}) : super(key: key);

  const RowLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("RowLayout"),
      ),
      body: Container(
        color: Colors.tealAccent,
        height: MediaQuery.of(context).size.height, // 屏幕高度
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // 主轴显示方式
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(padding: EdgeInsets.all(5),child:  IconContainer(Icons.add,backgroundColor: Colors.red,),),
            Padding(padding: EdgeInsets.all(5),child:  IconContainer(Icons.home),),
            Padding(padding: EdgeInsets.all(5),child:  IconContainer(Icons.newspaper,backgroundColor: Colors.blue,),),
          ],
        ),
      )
    );
  }
}
