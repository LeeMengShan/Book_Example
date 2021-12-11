/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
第一頁為個人與作品介紹

*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';
// 引入components裏面的側邊欄組件
import 'package:hw1/components/common_drawer.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // 設定空標題列
        appBar: AppBar(),
        // 引入先前設定的側邊欄
        drawer: CommonDrawer.getDrawer(context),
        // 單一滾動檢視，引入更多組件

        backgroundColor: Colors.blue[50],
        
          
        body: SingleChildScrollView(
            // 放入一個Container
            child: Container(
                
                // 排版置中
                alignment: Alignment.center,
                child: Column(
                    // 安排需要放進去的組件
                    children: [
                      
                      Container(
                        
                        child: Text(
                        "個人與作品介紹",
                        style: TextStyle(fontSize: 32),
                        
                        )
                      ),
                      
                      Container(
                          child: Text(
                        "",
                        style: TextStyle(fontSize: 28),
                      )),
                      
                      Container(
                        child: Text(
                          "個人介紹",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      
                      Container(
                        child: Text(
                          "Meng-Shan Lee",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      
                      Container(
                        child: Text(
                          "中央大學 企管系",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),

                      Container(
                          child: Text(
                        "",
                        style: TextStyle(fontSize: 28),
                      )),


                      Container(
                        child: Text(
                          "作品介紹",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),


                      Container(
                        child: Text(
                          "introduction",
                          style: TextStyle(fontSize: 20),
                        ),
                        
                      )
                    ]))));
  }
}
