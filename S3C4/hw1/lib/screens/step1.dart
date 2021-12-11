/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
以Row進行三個階段的改寫，每個階段分別以一個檔案展現。 
第一個階段:
  先將Container 擺放進Row內，讓畫面可以正常瀏覽
  
*/


// 引用flutter的核心套件
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // Scaffold是flutter預設的Widget，就像一張大畫布，裡面可以承載多種不同的Widget
    return Scaffold(
      // 希望在畫布內垂直擺放Widget，設置了Column，並置入三個Widget在Children參數內
        body: Row(
          children: [
            Container(
                color:Colors.blue,
                child: Text(
                  "大頭照預留區",
                  style: TextStyle(fontSize: 30),
                )
            ),
            Container(
                color:Colors.red,
                child: Text(
                  "簡介",
                  style: TextStyle(fontSize: 30),
                )
            ),
            Container(
                color:Colors.amber,
                child: Text(
                  "座右銘",
                  style: TextStyle(fontSize: 30),
                )
            )
          ],
        )
    );
  }
}
