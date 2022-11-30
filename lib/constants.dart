import 'package:flutter/material.dart';

const primaryColor = Color(0xFFa9c6b9);
const secondaryColor = Color(0xFFc4dcd5);
const thirdColor = Color(0xFFdae9e6);
const pointColor = Color(0xFFb6abab);
const grayColor = Color(0xFFeeeeee);
const cancelColor = Color(0xFFb6abbb);
Color shadowColor = Color(0xFFDADFF0);
const defaultPadding = 16.0;


font_light(double size, color){
  return TextStyle(fontFamily: "NotoSansKR_Light", fontSize: size, color: color);
}

font_medium(double size, color){
  return TextStyle(fontFamily: "NotoSansKR_Medium", fontSize: size, color: color);
}

font_bold(double size, color){
  return TextStyle(fontFamily: "NotoSansKR_Bold", fontSize: size, color: color,);
}

justWait({required int numberOfmilliseconds}) async {
  await Future.delayed(Duration(milliseconds: numberOfmilliseconds));
}