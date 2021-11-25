/*

Author: Meng-Shan Lee

ToDo:
以元素遍歷版的迴圈方式，為Q1的List內的數字作加總

*/

void main() {

  // 建立一個整數的List集合，內容為 [ 3,5,6,1,2 ]
  List<int> thisList = [3, 5, 6, 1, 2];

  // 宣告一個整數型態的變數，用來存放List內數字加總的值
  int ans = 0;

  // 以元素遍歷版的迴圈方式，加總List內的數字
  // 宣告一個整數型態的變數num，用來讀出List中的數字
  for (int num in thisList) {

    // 加上當前讀出的數字
    ans = ans + num;
  }
}
