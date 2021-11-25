/*

Author: Meng-Shan Lee

ToDo:
以迴圈的方式，印出4階層的星星左上三角金字塔
*
**
***
****

*/

void main() {
  // 迴圈，一個數字型態的變數，存放現在要印出的階層，總共4階
  for (int count = 1; count < 5; count++) {

      // 第一階1個＊，第二階2個＊，以此類推
      // 可知count的數值與該階層的＊數相等
      // 宣告一個字串型態的變數star，要印出的*
      String star = '*' * count;
      print(star);
  }
  
}
