import 'package:flutter/material.dart';

class News extends StatelessWidget{
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("资讯"),),
      body: Center(
        child: Column(
          children:const [
            Text("资讯")
          ],
        ),
      ),
    );
  }
}