/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
在components資料夾內，編寫一個側邊欄，設置兩個ListTile，
點擊ListTile時，會分發到後續的兩個頁面。

*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';

class CommonDrawer {
  //類別的靜態方法static讓我們不需創建CommonDrawer物件，即可調度getDrawer函數

  // 調度getDrawer函數，需放入Flutter用來記錄頁面構建資訊的BuildContext，
  // 而後會回傳一個Drawer
  static Drawer getDrawer(BuildContext context){
    return Drawer(
      
      child: ListView(
        children: [

          // 第一個ListTitle
          ListTile(
            title: const Text('FirstScreen'),
            onTap: () {
              // 轉發至FirstScreen
              Navigator.pushNamed(context, "/first");
            },
          ),

          // 第二個ListTitle
          ListTile(
            title: const Text('SecondScreen'),
            onTap: () {
              // 轉發至SecondScreen
              Navigator.pushNamed(context, "/second");
            },
          ),
        ],
        
      ),
    );
  }
}
