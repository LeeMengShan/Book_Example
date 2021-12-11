/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
編寫一個HomeScreen類別，並回傳Scaffold，
Scaffold內回傳一個Container，
指定長400、寬400，黑色底幕，內容為「主頁」，文字顏色為白色。
並建置一個AppEntryPoint作為MaterialApp，引入HomeScreen，觀看效果。

*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // Scaffold是flutter預設的Widget，就像一張大畫布，裡面可以承載多種不同的Widget
    return Scaffold(
      // 設置了核心元件Container，並設計了他的大小與底色，並嵌入了Text，Text有一個參數可以調整字體大小，如下面案例
      body: Container(
        width: 400,
        height: 400,
        color:Colors.black,
        child: Text(
            "主頁",
          style: TextStyle(fontSize: 30, color: Colors.white),
        )
      )
    );
  }
}