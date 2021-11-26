/*

Author: Meng-Shan Lee

ToDo:
宣告一個 Map，鍵值型態分別為 String, dynamic。 
有一個鍵叫做 questionId，內容為整數。
有一個鍵叫做questionContent，內容為字串。

*/

// 引用convert套件
import 'dart:convert';

void main() {
  // 宣告一個 Map，鍵值型態分別為 String, dynamic。
  Map<String, dynamic> question = {
    // 有一個鍵叫做 questionId，內容為整數。
    'questionId': 1,

    // 有一個鍵叫做questionContent，內容為字串。
    'questionContent': '宣告一個 Map'
  };
  print(question);
}
