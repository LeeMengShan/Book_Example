/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
建立一個Cat類別，
裏面有字串型別的variety (品種屬性)， 數字型別的weight（重量屬性），
一個echo函數，使用時會印出 喵 
並設計一個第二建構子fromJson()，能接收dynamic的json資料去生成Cat物件，
並設計一個 toJson()，能將Cat物件，轉換回 String型別的json資料。

*/

import 'dart:convert';

class Cat {

  // 設定此類別的組成要件
  String variety;
  double weight;

  // 設定此類別的核心建構子
  // 特殊語法格式，意思就是用戶到時候按序輸入對應型別的參數，即可獲得一個Cat物件
  Cat(this.variety, this.weight);

  // 一個echo函數，使用時會印出 喵 
  void echo() {
    print("喵");
  }

  // 設計一個第二建構子fromJson()
  // 能接收dynamic的json資料去生成Cat物件
  factory Cat.fromJson(dynamic catJson){

    // 設定此類別的組成要件
    String extractVariety = catJson["variety"];
    double extractWeight = catJson["weight"];

    return Cat(extractVariety,extractWeight);

  }

  // 設計一個 toJson()
  // 能將Cat物件，轉換回 String型別的json資料。
  String toJson(){

    dynamic instanceMap ={"varuety": variety, "weight": weight};
    return jsonEncode(
        instanceMap
    );
  }


}

// 調度
void main() {
  Cat Tom = Cat('英國短毛貓', 33);
  print(Tom.variety);
  print(Tom.weight);
  Tom.echo();

  // fromJson
  // 準備一個 json String
  String kitty = """{"variety":"沒有嘴巴的貓", "weight": 15.0}""";
  // 轉換成dart 可操作的dynamic json 資料型態
  dynamic kittyToDartDynamic = jsonDecode(kitty);
  // 轉換成cat 物件
  Cat kittyCat = Cat.fromJson(kittyToDartDynamic);
  print(kittyCat.variety);
  print(kittyCat.weight);
  kittyCat.echo();

  // toJson
  // 將原本的user物件轉換成 符合json格式的String
  String catObjectTojsonString = Tom.toJson();
  // 再將此String，轉換為可操作的dynamic json資料型態
  dynamic jsonStringToDartJson = jsonDecode(catObjectTojsonString);
  // 轉換成user 物件
  Cat theCatJerryHate = Cat.fromJson(jsonStringToDartJson);
  print(theCatJerryHate.variety);
  print(theCatJerryHate.weight);
  
}


