/*

Author: Meng-Shan Lee

ToDo:
建立一個Human類別，
裏面有字串型別的variety (品種屬性)， 數字型別的weight（重量屬性），
一個echo函數，使用時會印出 雲育鏈
並設計一個第二建構子fromJson()，能接收dynamic的json資料去生成Human物件，
並設計一個 toJson()，能將Human物件，轉換回 String型別的json資料。

*/

import 'dart:convert';

class Human {

  // 設定此類別的組成要件
  String variety;
  double weight;

  // 設定此類別的核心建構子
  // 特殊語法格式，意思就是用戶到時候按序輸入對應型別的參數，即可獲得一個Human物件
  Human(this.variety, this.weight);

  // 一個echo函數，使用時會印出 雲育鏈 
  void echo() {
    print("雲育鏈");
  }

  // 設計一個第二建構子fromJson()
  // 能接收dynamic的json資料去生成Human物件
  factory Human.fromJson(dynamic humanJson){

    // 設定此類別的組成要件
    String extractVariety = humanJson["variety"];
    double extractWeight = humanJson["weight"];

    return Human(extractVariety,extractWeight);

  }

  // 設計一個 toJson()
  // 能將Human物件，轉換回 String型別的json資料。
  String toJson(){

    dynamic instanceMap ={"varuety": variety, "weight": weight};
    return jsonEncode(
        instanceMap
    );
  }


}
