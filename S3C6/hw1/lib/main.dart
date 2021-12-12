/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
編寫兩個頁面，
一個頁面為FirstScreen，訪問其路徑/first時，
會看見文字，內容為「第一個頁面」，
一個頁面為SecondScreen，訪問其路徑/second時，
會看見文字，內容為「第二個頁面」

*/

import 'package:flutter/material.dart';
import 'package:hw1/screens/FirstScreen.dart';
import 'package:hw1/screens/SecondScreen.dart';

class AppEntryPoint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          
          //訪問路徑/first時，看到頁面FirstScreen
          "/first": (BuildContext context) => FirstScreen(),
          
          //訪問路徑/first時，看到頁面SecondScreen
          "/second": (BuildContext context) => SecondScreen(),
        },

        // 設定初始路徑為/first
        initialRoute: "/first",
    );
  }
}

void main() {
  runApp(AppEntryPoint());
}