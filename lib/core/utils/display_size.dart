import 'package:flutter/material.dart';

class DisplaySize {
  static double getDisplayHeight(context){
    return MediaQuery.of(context).size.height/1;
  }
  static double getDisplayWidth(context){
    return MediaQuery.of(context).size.width/1;
  }
}