/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
將Q1-Q3的內容組合成一個大型字串，並使用print印在畫面上
  Q1 - 有一個文字表達的變數，其變數名為jobInfo，其內容叫做全端工程師。

  Q2 - 有一個文字表達的變數，其變數名為description，其內容叫做「會寫給用戶看的，也會寫接觸資料庫的」。

  Q3 - 有一個數字表達的變數，其變數名為salary，其內容為 35000

*/


void main() {
  
  // 一個文字表達的變數，名為jobInfo，內容為全端工程師。
  String jobInfo = "全端工程師";

  // 一個文字表達的變數，名為description，內容為「會寫給用戶看的，也會寫接觸資料庫的」。
  String description = "「會寫給用戶看的，也會寫接觸資料庫的」";

  // 一個數字表達的變數，名為salary，內容為35000。
  int salary = 35000;

  print("有一個職位叫做" +jobInfo +"，他"+description +"，薪水是" +salary.toString());
}
