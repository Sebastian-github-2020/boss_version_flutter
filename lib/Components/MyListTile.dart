import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String subTitle;

  const MyListTile(this.title, this.subTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
      ),
      onTap: (){
        print(subTitle);
      },
    );
  }
}
