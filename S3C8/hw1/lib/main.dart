/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
在components資料夾內，編寫一個側邊欄，設置兩個ListTile，
點擊ListTile時，會分發到後續的兩個頁面。

第一個頁面為FirstScreen，
訪問其路徑/first時，會看見側邊欄與一個文字內容，「第一個頁面」。

第二個頁面為SecondScreen，
訪問其路徑/second時，會看見側邊欄與一個文字內容，「第二個頁面」。

而後引用至FirstScreen與SecondScreen。

*/

import 'package:flutter/material.dart';
import 'package:hw1/screens/FirstScreen.dart';
import 'package:hw1/screens/SecondScreen.dart';

class AppEntryPoint extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        
        "/first": (BuildContext context) => FirstScreen(),
        "/second": (BuildContext context) => SecondScreen(),
      },
      initialRoute: "/first",
    );
  }
}

void main() {
  runApp(AppEntryPoint());
}
