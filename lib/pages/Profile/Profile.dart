import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("我的"),),
      body: Center(
        child: Column(
          children:const [
            Text("我的")
          ],
        ),
      ),
    );
  }
}