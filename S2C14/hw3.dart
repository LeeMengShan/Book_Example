/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

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

    dynamic instanceMap ={"variety": variety, "weight": weight};
    return jsonEncode(
        instanceMap
    );
  }


}

// 調度class
void main() {
  Human CaptainAmerica = Human('American', 88);
  print(CaptainAmerica.variety);
  print(CaptainAmerica.weight);
  CaptainAmerica.echo();

  // fromJson
  // 準備一個 json String
  String humanToJsonString = """{"variety":"Chinese", "weight": 78.0}""";
  // 轉換成dart 可操作的dynamic json 資料型態
  dynamic ToDartDynamic = jsonDecode(humanToJsonString);
  // 轉換成dog 物件
  Human human2 = Human.fromJson(ToDartDynamic);
  print(human2.variety);
  print(human2.weight);
  

  // toJson
  // 將原本的user物件轉換成 符合json格式的String
  String ObjectTojsonString = CaptainAmerica.toJson();
  // 再將此String，轉換為可操作的dynamic json資料型態
  dynamic jsonStringToDartJson = jsonDecode(ObjectTojsonString);
  // 轉換成user 物件
  Human human3 = Human.fromJson(jsonStringToDartJson);
  print(human3.variety);
  print(human3.weight);
  
}
