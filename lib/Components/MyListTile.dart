import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget page;
  const MyListTile(this.title, this.subTitle,this.page, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
      ),
      onTap: (){
       // print(subTitle);
        //跳转
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>page)
        );
      },
    );
  }
}
