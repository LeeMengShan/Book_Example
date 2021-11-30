/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
以迴圈的方式，print出一個9*9的九九乘法表

*/

void main() {
  // 迴圈，被乘數從1~9
  for (int c = 1; c <= 9; c++) {

    // 宣告一個字串型態的變數，用來存放單行要印出的內容
    String ans = '';

    // 迴圈，乘數從1~9
    for (int a = 1; a <= 9; a++) {

      // 宣告一個整數型態的變數，存放當前被乘數x乘數的答案
      int temp = c * a;

      // 將算式與答案加入單行要印出的內容 
      ans = ans +' '+c.toString() + '*' + a.toString() + '=' + temp.toString();
    }

    // 印出該行內容
    print(ans);
  }
}
