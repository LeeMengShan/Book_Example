/*

Author: Meng-Shan Lee

ToDo:
建立一個Dog類別，
裏面有字串型別的variety (品種屬性)， 數字型別的weight（重量屬性），
一個echo函數，使用時會印出 汪 
並設計一個第二建構子fromJson()，能接收dynamic的json資料去生成Dog物件，
並設計一個 toJson()，能將Dog物件，轉換回 String型別的json資料。

*/

import 'dart:convert';

class Dog {

  // 設定此類別的組成要件
  String variety;
  double weight;

  // 設定此類別的核心建構子
  // 特殊語法格式，意思就是用戶到時候按序輸入對應型別的參數，即可獲得一個Dog物件
  Dog(this.variety, this.weight);

  // 一個echo函數，使用時會印出 汪
  void echo() {
    print("汪");
  }

  // 設計一個第二建構子fromJson()
  // 能接收dynamic的json資料去生成Dog物件
  factory Dog.fromJson(dynamic dogJson){

    // 設定此類別的組成要件
    String extractVariety = dogJson["variety"];
    double extractWeight = dogJson["weight"];

    return Dog(extractVariety,extractWeight);

  }

  // 設計一個 toJson()
  // 能將Dog物件，轉換回 String型別的json資料。
  String toJson(){

    dynamic instanceMap ={"varuety": variety, "weight": weight};
    return jsonEncode(
        instanceMap
    );
  }


}



