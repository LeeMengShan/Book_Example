/*

Author: Meng-Shan Lee

ToDo:
設計一個條件判斷，
如果比較的變數內容值為cxcxc，則印出快找老師簽大話aws架構書，
比較的變數內容值若不是cxcxc，則印出快去買大話aws架構書跟大話flutter

*/

void main() {

  // 宣告變數
  String key = 'cxcxc';

  // 設計一個條件判斷，判斷變數值是否為’cxcxc‘
  if (key == 'cxcxc') {

    // 變數內容值為cxcxc，則印出快找老師簽大話aws架構書
    print('快找老師簽大話aws架構書');
  } else {

    // 變數內容值若不是cxcxc，則印出快去買大話aws架構書跟大話flutter
    print('快去買大話aws架構書跟大話flutter');
  }
}
