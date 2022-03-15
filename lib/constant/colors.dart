// import 'package:flutter/material.dart';
//
// // const brown = const Color("0xFFB2522");
//
// class HexColor extends Color{
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll("#", "");
//     if (hexColor.length == 6){
//       hexColor = "FF" + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
// }
//
// Color splashBackground = HexColor("#E5E5E5");
// Color purple = HexColor("#7237C5");

import 'package:flutter/material.dart';

// const brown = const Color("0xFFB2522");

class HexColor extends Color{
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}


Color blue = HexColor("#5149F7");
Color background = HexColor("#1C1C1C");
Color fWhite = HexColor("#FAFAFA");
Color grey = HexColor("#242424");
Color lowWhite = HexColor("#F6F9FF");
Color fBlue = HexColor("#3E7FFF");
Color dirtyWhite = HexColor("#CDD1D6");
Color deepBlue = HexColor("#5B53F0");
Color lightBlue = HexColor("#736CFC");
Color fakeBlack = HexColor("#313131");
Color btc = HexColor("#F89F33");
Color xrp = HexColor("#1486BE");
Color light = HexColor("#CDD1D6");




