import 'package:flutter/material.dart';


class StackLayout extends StatelessWidget{
  const StackLayout({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(title: const Text("StackLayout"),),
     body: Stack(
       children: [
         Image.network(
           "https://tva1.sinaimg.cn/large/e91ed61fly1g183vnhrwfj20u00mitc3.jpg",
         ),
         Text("aaaaa")
       ],
     ),
   );
  }
}