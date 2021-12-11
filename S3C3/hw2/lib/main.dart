/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
編寫一個HomeScreen類別，並回傳Scaffold，
Scaffold內回傳一個Container，
指定長400、寬400，黑色底幕，內容為「主頁」，文字顏色為白色。
並建置一個AppEntryPoint作為MaterialApp，引入HomeScreen，觀看效果。

*/

import 'package:flutter/material.dart';
import 'package:hw2/HomeScreen.dart';

class AppEntryPoint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen()
    );
  }
}

/*
* Dart程式的主要入口
*   告知Dart，啟動AppEntryPoint
* */
void main() {
  runApp(AppEntryPoint());
}