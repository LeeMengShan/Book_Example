/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
定義一個會回傳數字的方法，
函數名為iAmIntFunction，並帶有字串型別的函數參數 iAmInt, 
之後回傳數字為 該參數*20

*/


// 回傳「數字」的方法，函數名為iAmIntFunction
// 帶有字串型別的函數參數 iAmInt
int iAmIntFunction(String iAmInt) {

  // 回傳數字為 該參數*20
  int result = int.parse(iAmInt) * 20;

  return result;

}


