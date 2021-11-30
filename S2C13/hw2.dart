/*

Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
建立一個Dog類別，
裏面有字串型別的variety (品種屬性)， 數字型別的weight（重量屬性），
一個echo函數，使用時會印出 汪 

*/

class Dog {

  // 設定此類別的組成要件
  String variety;
  double weight;

  // 設定此類別的核心建構子
  // 特殊語法格式，意思就是用戶到時候按序輸入對應型別的參數，即可獲得一個Dog物件
  Dog(this.variety, this.weight);

  // 一個echo函數，使用時會印出 汪
  void echo() {
    print("汪");
  }
}

//  調度class
void main() {
  Dog Snoopy = Dog('米格魯', 40);
  print(Snoopy.variety);
  print(Snoopy.weight);
  Snoopy.echo();
}

