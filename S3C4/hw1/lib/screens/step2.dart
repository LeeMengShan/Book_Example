/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
以Row進行三個階段的改寫，每個階段分別以一個檔案展現。 
第二個階段:
  將Container的比例放大，並透過Expanded進行畫面配比
  
*/


// 引用flutter的核心套件
import 'package:flutter/material.dart';

/*
* Flutter渲染畫面的思維是萬物皆為Widget，
* 我們若要做一些視覺化內容，只需建立class，並繼承StatelessWidget
*   flutter在StatelessWidget內有一個未實踐的build方法
*   我們只需要在裡面重新實踐build方法，並在最後傳回一個Widget型態的物件，即可
*
* Scaffold相當於一張大畫布，當我們要放入其他內容的時候，會建議在根層放上一個Scaffold
*
* */
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    // Scaffold是flutter預設的Widget，就像一張大畫布，裡面可以承載多種不同的Widget
    return Scaffold(
      // 希望在畫布內垂直擺放Widget，設置了Column，並置入三個Widget在Children參數內
        body: Row(
          children: [
            // Flutter是有預設最大畫面長寬的，即為該視窗的大小，如果Widget尺寸超過的話，會發生錯誤
            // 為了讓他們可以按比例擠在一個視窗內，可以透過Expanded再封裝，
            // Expanded會統計，並按照設定比例在螢幕上分配尺寸大小
            Expanded(
              child: Container(
                  width:500,
                  height:500,
                  color:Colors.blue,
                  child: Text(
                    "大頭照預留區",
                    style: TextStyle(fontSize: 30),
                  )
              ),
            ),
            // Flutter是有預設最大畫面長寬的，即為該視窗的大小，如果Widget尺寸超過的話，會發生錯誤
            // 為了讓他們可以按比例擠在一個視窗內，可以透過Expanded再封裝，
            // Expanded會統計，並按照設定比例在螢幕上分配尺寸大小
            Expanded(
                child:Container(
                    width:200,
                    height:200,
                    color:Colors.red,
                    child: Text(
                      "簡介",
                      style: TextStyle(fontSize: 30),
                    )
                )
            ),
            Expanded(
             child: Container(
                 color:Colors.amber,
                 child: Text(
                   "座右銘",
                   style: TextStyle(fontSize: 30),
                 )
             )
            )
          ],
        )
    );
  }
}
