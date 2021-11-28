/*

Author: Meng-Shan Lee

ToDo:
建立一個Cat類別，
裏面有字串型別的variety (品種屬性)， 數字型別的weight（重量屬性），
一個echo函數，使用時會印出 喵 

*/

class Cat {

  // 設定此類別的組成要件
  String variety;
  double weight;

  // 設定此類別的核心建構子
  // 特殊語法格式，意思就是用戶到時候按序輸入對應型別的參數，即可獲得一個Cat物件
  Cat(this.variety, this.weight);

  // 一個echo函數，使用時會印出 喵 
  void echo() {
    print("喵");
  }
}

