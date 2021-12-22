/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:

一個頁面為SecondScreen，訪問其路徑/second時，會看見兩個文字按鈕，
第一個文字按鈕內容為「前往第三個頁面」，第二個文字按鈕內容為「跳轉前頁」。

*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(  

        children:[

          // 第一個文字按鈕
          TextButton(

            // 文字按鈕內容為「前往第三個頁面」
            child:Text("前往第三個頁面"),
            onPressed: (){
              Navigator.pushNamed(context, "/third");
            },
          ),

          // 第二個文字按鈕
          TextButton(

            // 文字按鈕內容為「跳轉前頁」
            child:Text("跳轉前頁"),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ]

      )
    );
    
  }
}
