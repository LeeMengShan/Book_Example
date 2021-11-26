/*

Author: Meng-Shan Lee

ToDo:
有一個符合json object格式的字串，

  {
    "itemId":303031,
    "itemName":"白米飯",
    "itemPrice":300
  }

請嘗試轉換成Map<String, dynamic>的資料結構，並成功提取itemId欄位。


*/

import 'dart:convert';
void main() {

  // 宣告一個字串型態的變數，內容如題
  String  jsonObjectString = """{
    "itemId":303031,
    "itemName":"白米飯",
    "itemPrice":300
    }"""; 

  // 透過convert套件的jsonDecode方法轉化成 Map<String, dynamic>
  Map<String, dynamic> fromJsonObjectStrToDartMap = jsonDecode(jsonObjectString);

  // 提取itemId欄位
  print(fromJsonObjectStrToDartMap['itemId']);

}