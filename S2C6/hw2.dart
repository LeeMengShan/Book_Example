/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
將先前建置的Map 轉換成 json object格式的字串

*/

import 'dart:convert';

void main() {
  // 宣告一個 Map，鍵值型態分別為 String, dynamic。
  Map<String, dynamic> question = {
    // 有一個鍵叫做 questionId，內容為整數。
    'questionId': 1,

    // 有一個鍵叫做questionContent，內容為字串。
    'questionContent': '宣告一個 Map'
  };

  // 透過convert套件的jsonEncode方法轉化為符合json格式的字串
  // 宣告一個字串型態的變數，承接轉化成json格式的字串
  String questionInJson = jsonEncode(question);
}
