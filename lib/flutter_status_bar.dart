library flutter_status_bar;

import 'package:flutter/material.dart';
import 'dart:io' show Platform;

export 'src/status_bar_color.dart' show StatusBarColor;

class FlutterStatusBar extends StatelessWidget {
  final Color color;
  final Color androidColor;
  final Widget child;
  final bool top;
  FlutterStatusBar({Key key, this.color, this.child, this.top, this.androidColor}):super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = this.color == null ? Colors.white : this.color;
    if(Platform.isAndroid){
      if(androidColor == null){
        color = Colors.grey;
      } else {
        color = androidColor;
      }
    }
    var child = this.child == null ? Container() : this.child;
    var top = this.top == null ? true : this.top;
    return Container(
      color: color,
      child: SafeArea(
        child: child,
        top: top,
      ),
    );;
  }
}
