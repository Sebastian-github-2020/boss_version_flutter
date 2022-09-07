import 'package:flutter/material.dart';
import '../../Components/IconContainer.dart';

class ColumnLayout extends StatelessWidget {
  // const RowLayout({Key? key}) : super(key: key);

  const ColumnLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("ColumnLayout"),
        ),
        body: Container(
          color: Colors.tealAccent,
          width: MediaQuery.of(context).size.width, // 屏幕高度
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 主轴显示方式
            crossAxisAlignment: CrossAxisAlignment.start,
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
