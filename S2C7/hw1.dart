/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

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
      "objectInJsonObject":{"lastStringField":"cxcxc"
      }
    }""";

嘗試解析並提出arrayInJsonObject的內容值

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
      "objectInJsonObject":{"lastStringField":"cxcxc"}
      }
    }""";

  // 解析成可操作的Array
  Map<dynamic, dynamic> bigJsonObject = jsonDecode(validNestedJsonObjectString);
  
  // 調度Map內其中一個json object，提取索引值為3的欄位，即arrayInJsonObject所在之欄位
  Map<dynamic, dynamic> jsObject = bigJsonObject["jsonObject"];
  
  // 提出arrayInJsonObject的內容值
  print(jsObject['arrayInJsonObject']);
  
}
