/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
第二頁為實習履歷介紹

*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';
// 引入components裏面的側邊欄組件
import 'package:hw1/components/common_drawer.dart';

class SecondScreen extends StatelessWidget {
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
                
                alignment: Alignment.centerLeft,

                child: Column(
                    // 安排需要放進去的組件
                    children: [
                      
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                        "實習履歷介紹",
                        style: TextStyle(fontSize: 32,),
                        
                        )
                      ),
                      
                      Container(
                          child: Text(
                        "",
                        style: TextStyle(fontSize: 28),
                      )),
                      
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "1. 雲育鏈",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "since Jul,2021~Now",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),

                      Container(
                          child: Text(
                        "",
                        style: TextStyle(fontSize: 28),
                      )),


                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(                          
                          "2. Amazing Talker 家教",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),


                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "since Jun,2020 ~ Jul,2021",
                          style: TextStyle(fontSize: 20),
                        ),
                        
                      )
                    ]))));
  }
}

