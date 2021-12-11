/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
在AppEntryPoint這個MaterialApp內，
運行DemoScreen這個Scaffold，
讓網頁瀏覽器可看到 「Flutter的核心主結構，MaterialApp與Scaffold」這串字

*/


import 'package:flutter/material.dart';
import 'package:hw2/screens/DemoScreen.dart';

/*
Flutter 程式的主要入口
在Flutter的思想裡，萬物都是Widget，也只有Widget可以被渲染在用戶的載具畫面上
故AppEntryPoint也必須是Widget，才能順利在Flutter框架下運行。
為使AppEntryPoint是Widget，讓其繼承StatelessWidget
*/
class AppEntryPoint extends StatelessWidget {

  /*
  * MaterialApp就像是核心必備的大畫框，
  * home參數接入Widget，一般多接Scaffold為基礎的Widget
  * */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DemoScreen()
    );
  }
}

/*
Dart程式的主要入口
告知Dart，啟動AppEntryPoint
*/
void main() {
  runApp(AppEntryPoint());
}