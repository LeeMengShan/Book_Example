/*

Author: Meng-Shan Lee

ToDo:
有一個複雜巢狀 json string，

  String validNestedJsonObjectString = """{
    "jsonString":"hello",
    "jsonNumber": 123,
    "jsonArray": [1,2,3,4,5,6],
    "jsonObject":{
      "stringInJsonObject":"abc",
      "numberInJsonObject":456,
      "arrayInJsonObject":[7,8,9,1,2,3],
      "objectInJsonObject":{
        "lastStringField":"cxcxc"
      }
    }
  }""";

嘗試解析並提出stringInJsonObject的內容值

*/

import 'dart:convert';

void main() {

  // 宣告一個字串型態的變數，內容如題
  String validNestedJsonObjectString = """{
    "jsonString":"hello",
    "jsonNumber": 123,
    "jsonArray": [1,2,3,4,5,6],
    "jsonObject":{
      "stringInJsonObject":"abc",
      "numberInJsonObject":456,
      "arrayInJsonObject":[7,8,9,1,2,3],
      "objectInJsonObject":{
        "lastStringField":"cxcxc"
      }
    }
  }""";

  // 透過convert套件的jsonDecode方法轉化成 Map<String, dynamic>
  Map<String, dynamic> toDartMap = jsonDecode(validNestedJsonObjectString);

  // stringInJsonObject 位於jsonObject中
  // 提出stringInJsonObject的內容值
  print(toDartMap['jsonObject']["stringInJsonObject"]);
  
}
