/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
編寫三個頁面，

一個頁面為FirstScreen，訪問其路徑/first時，會看見兩個文字按鈕，
第一個文字按鈕內容為「前往第二個頁面」，第二個文字按鈕內容為「跳轉前頁」。

一個頁面為SecondScreen，訪問其路徑/second時，會看見兩個文字按鈕，
第一個文字按鈕內容為「前往第三個頁面」，第二個文字按鈕內容為「跳轉前頁」。

一個頁面為ThirdScreen，訪問其路徑/third時，會看見兩個文字按鈕，
第一個文字按鈕內容為「前往第一個頁面」，第二個文字按鈕內容為「跳轉前頁」。


*/

import 'package:flutter/material.dart';
import 'package:hw1/screens/FirstScreen.dart';
import 'package:hw1/screens/SecondScreen.dart';
import 'package:hw1/screens/ThirdScreen.dart';

class AppEntryPoint extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        /*
          * "路徑名": (BuildContext context) => 頁面物件
          * */
        "/first": (BuildContext context) => FirstScreen(),
        "/second": (BuildContext context) => SecondScreen(),
        "/third": (BuildContext context) => ThirdScreen(),
        
      },
      initialRoute: "/first",
    );
  }
}


void main() {
  runApp(AppEntryPoint());
}
