/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/


ToDo:
以分層資料夾格式，編寫一個部落格網站，
components具有側邊欄，可以導引到各頁面。


*/

// 引用flutter的核心套件
import 'package:flutter/material.dart';

class CommonDrawer {

  static Drawer getDrawer(BuildContext context){
    return Drawer(
      // 避免按鍵過多時，超出畫面而異常，使用ListView
      child: ListView(
        // 放入ListView專用的
        children: [
          ListTile(
            title: const Text('個人與作品介紹'),
            onTap: () {
              // 轉發至第一頁
              Navigator.pushNamed(context, "/first");
            },
          ),
          ListTile(
            title: const Text('實習履歷介紹'),
            onTap: () {
              // 轉發至第二頁
              Navigator.pushNamed(context, "/second");
            },
          ),
          ListTile(
            title: const Text('個人興趣'),
            onTap: () {
              // 轉發至第三頁
              Navigator.pushNamed(context, "/third");
            },
          )
        ],
      ),
    );
  }
}
