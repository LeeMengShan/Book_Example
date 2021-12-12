/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
第二個頁面為SecondScreen，
訪問其路徑/second時，會看見側邊欄與一個文字內容，「第二個頁面」。

*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';
import 'package:hw1/components/common_drawer.dart';

/*
* 首頁面 - 回傳一個文字按鈕，當點擊時，跳轉到第二頁
* */
class SecondScreen extends StatelessWidget {
  /*
  *
  * 為了展示Drawer側邊欄，必須要先建置一個AppBar在畫面的頂端，並將其放入Scaffold的appBar參數
  * 進一步調度CommonDrawer的getDrawer函數，生成Drawer，放入Scaffold的drawer參數
  * 
  * 頁面內容的部分與先前案例相同
  *
  * */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: CommonDrawer.getDrawer(context),
        body: Text("第二個頁面"),
          
        );
  }
}