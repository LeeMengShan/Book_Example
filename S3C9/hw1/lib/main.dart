/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
以分層資料夾格式，編寫一個部落格網站，
components具有側邊欄，可以導引到各頁面。

設計一個component，此component功能為個人照，具有底色，個人照在底色之上。

第一頁為個人與作品介紹、第二頁為實習履歷介紹、第三頁為個人興趣。

*/

import 'package:flutter/material.dart';
import 'package:hw1/screens/FirstScreen.dart';
import 'package:hw1/screens/SecondScreen.dart';
import 'package:hw1/screens/ThirdScreen.dart';
import 'package:hw1/components/component.dart';
class AppEntryPoint extends StatelessWidget {

  /*
  *
  * MaterialApp就像是核心必備的大畫框，
  * 透過routes參數，可指定路徑對應到不同的Screen
  * initialRoute為預設的讀取位置
  *
  * */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          /*
          * "路徑名": (BuildContext context) => 頁面物件
          * */

          "/com":(BuildContext context)=> Component(),
          "/first": (BuildContext context) => FirstScreen(),
          "/second": (BuildContext context) => SecondScreen(),
          "/third": (BuildContext context) => ThirdScreen(),
        },
        initialRoute: "/com",
    );
  }
}

void main() {
  runApp( AppEntryPoint());
}

