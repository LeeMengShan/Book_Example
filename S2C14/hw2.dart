/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

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

    dynamic instanceMap ={"variety": variety, "weight": weight};
    return jsonEncode(
        instanceMap
    );
  }


}

// 調度class
void main() {
  Dog Snoopy = Dog('米格魯', 40);
  print(Snoopy.variety);
  print(Snoopy.weight);
  Snoopy.echo();

  // fromJson
  // 準備一個 json String
  String dogToJsonString = """{"variety":"柴犬", "weight": 38.0}""";
  // 轉換成dart 可操作的dynamic json 資料型態
  dynamic dogToDartDynamic = jsonDecode(dogToJsonString);
  // 轉換成dog 物件
  Dog dog2 = Dog.fromJson(dogToDartDynamic);
  print(dog2.variety);
  print(dog2.weight);
  

  // toJson
  // 將原本的user物件轉換成 符合json格式的String
  String dogObjectTojsonString = Snoopy.toJson();
  // 再將此String，轉換為可操作的dynamic json資料型態
  dynamic jsonStringToDartJson = jsonDecode(dogObjectTojsonString);
  // 轉換成user 物件
  Dog dog3 = Dog.fromJson(jsonStringToDartJson);
  print(dog3.variety);
  print(dog3.weight);
  
}

