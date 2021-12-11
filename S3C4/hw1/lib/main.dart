/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

*/



import 'package:flutter/material.dart';

//註解掉不看的版本,這邊假設要run step3
//import 'package:hw1/screens/step1.dart';
//import 'package:hw1/screens/step2.dart';
import 'package:hw1/screens/step3.dart';

class AppEntryPoint extends StatelessWidget {

  /*
  * MaterialApp就像是核心必備的大畫框，
  * home參數接入Widget，一般多接Scaffold為基礎的Widget
  * */
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
