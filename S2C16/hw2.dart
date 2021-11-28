/*

Author: Meng-Shan Lee

ToDo:
定義一個Human抽象類別，
有一個字串基礎屬性為姓名，另外有一個未實踐的echo函數。
另外設置一個Asian類別，繼承Human類別，調度echo函數時，必須印出 「你好」; 
另外設置一個European類別，繼承Human類別，調度echo函數時，必須印出 「Hello」
*/

abstract class Human {

  // 定義基本屬性，留到核心建構子，進行定義
  String name;
  
  // 核心建構子
  Human(this.name);

  // 定義了echo，但未編寫內容
  void echo();

}


// 亞洲人屬於人類的一種，以class 設置了亞洲人，並讓其繼承Human
// 類別一但繼承了抽象類別，就必須要實踐那些抽象類別還沒有完成編寫的函數
class Asian extends Human{

  // 亞洲人類別的建構子，用戶輸入之後，完成Asian類別的物件建置，並將該些內容交付給父類別的建構子。
  Asian(String name) : super(name);

  // 由於Human 抽象類別在此，沒有編寫函數，在此完成編寫，並加上@override，告知Dart覆蓋父類的同名函數
  @override
  // 調度echo函數時，必須印出 「你好」
  void echo() {
    print("你好");
  }

}

// 歐洲人屬於人類的一種，以class 設置了歐洲人，並讓其繼承Huamn
// 類別一但繼承了抽象類別，就必須要實踐那些抽象類別還沒有完成編寫的函數
class European extends Human{

  // 歐洲人類別的建構子，用戶輸入之後，完成European類別的物件建置，並將該些內容交付給父類別的建構子。
  European(String name) : super(name);

  // 由於Human 抽象類別在此，沒有編寫函數，在此完成編寫，並加上@override，告知Dart覆蓋父類的同名函數
  @override

  // 調度echo函數時，必須印出 「Hello」
  void echo() {
    print("Hello");
  }

}
