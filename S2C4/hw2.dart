/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
使用 數字序列號的迴圈方式，為Q1的List內的數字作加總

*/

void main() {
  // 建立一個整數的List集合，內容為 [ 3,5,6,1,2 ]
  List<int> thisList = [3, 5, 6, 1, 2];

  // 宣告一個整數型態的變數，用來存放List內數字加總的值
  int ans = 0;

  // 數字序列號的迴圈
  // 用變數index設定索引值範圍
  // 一次加上一個數字，迴圈跑完一次就加一，直到index >= List長度（即List中索引值對應內容為空）
  for (int index = 0; index < thisList.length; index++) {

    // 加上當前索引值對應的數   
    ans = ans + thisList[index];
  }

}
