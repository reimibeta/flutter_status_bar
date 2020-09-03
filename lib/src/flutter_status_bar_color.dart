import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

class FlutterStatusBarColor {
  static void theme({Brightness brightness, Color color}){
    var bright = brightness == null ? Brightness.light : brightness;
    var statusColor = color == null ? Colors.white : color;
    if(Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: statusColor,
        statusBarBrightness: bright,
      ));
    }
  }
}