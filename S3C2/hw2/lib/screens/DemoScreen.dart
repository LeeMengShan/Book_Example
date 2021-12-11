/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
設計一個名為DemoScreen的Scaffold，
裏面塞填入文字-「Flutter的核心主結構，MaterialApp與Scaffold」，
並建立一個DemoScreen

*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    // Scaffold是flutter預設的Widget，就像一張大畫布，裡面可以承載多種不同的Widget
    return Scaffold(
      body:Text("Flutter的核心主結構，MaterialApp與Scaffold")
    );
  }
}
