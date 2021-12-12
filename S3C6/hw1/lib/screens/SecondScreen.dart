/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
一個頁面為SecondScreen，
訪問其路徑/second時，會看見文字，
內容為「第二個頁面」

*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // 設定文字
      body: Text("第二個頁面"),
    );
  }
}