import 'package:flutter/material.dart';

/// 动态生成图标

class IconContainer extends StatelessWidget {
  final Color? backgroundColor;
  final IconData? icon;

  final Color? iconColor;

  final double? iconSize;

  const IconContainer(this.icon,
      {Key? key, this.backgroundColor, this.iconColor, this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 100,
        height: 100,
        color: backgroundColor??Colors.black,
        child: Center(
          child: Icon(
            icon??Icons.home,
            color: iconColor??Colors.white,
            size: iconSize??32.0,
          ),
        ));
  }
}
