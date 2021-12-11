/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
設計一個component，此component功能為個人照，具有底色，個人照在底色之上。


*/

import 'package:flutter/material.dart';
// 引入components裏面的側邊欄組件
import 'package:hw1/components/common_drawer.dart';

class Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // 設定空標題列
        appBar: AppBar(),
        // 引入先前設定的側邊欄
        drawer: CommonDrawer.getDrawer(context),
        // 單一滾動檢視，引入更多組件

        backgroundColor: Colors.blue[100],
        body: SingleChildScrollView(
          // 放入一個Container
          child: Container(
            height: 300,

            // 創建一個名為asset的資料夾，將要使用的照片放進去
            // 到pubspec.yaml 加入asset的照片取用
            /*
              flutter:
                assets:
                  - asset/p1.jpg(欲取用的照片檔名)
            */
            child: Image(
              image: AssetImage('asset/p1.jpg'),
            ),
          ),
        ));
  }
}
