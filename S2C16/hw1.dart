/*

Author: Meng-Shan Lee

ToDo:
定義一個Animal抽象類別，
有一個字串基礎屬性為姓名，另外有一個未實踐的echo函數。
另外設置一個Dog類別，繼承Animal類別，調度echo函數時，必須印出 「汪」; 
另外設置一個Cat類別，繼承Animal類別，調度echo函數時，必須印出 「喵」

*/

abstract class Animal {

  // 定義基本屬性，留到核心建構子，進行定義
  String name;
  
  // 核心建構子
  Animal(this.name);

  // 定義了echo，但未編寫內容
  void echo();

}


// 狗屬於動物的一種，以class 設置了狗，並讓其繼承Animal
// 類別一但繼承了抽象類別，就必須要實踐那些抽象類別還沒有完成編寫的函數
class Dog extends Animal{

  // 狗類別的建構子，用戶輸入之後，完成Dog類別的物件建置，並將該些內容交付給父類別的建構子。
  Dog(String name) : super(name);

  // 由於Animal 抽象類別在此，沒有編寫函數，在此完成編寫，並加上@override，告知Dart覆蓋父類的同名函數
  @override
  // 調度echo函數時，必須印出 「汪」
  void echo() {
    print("汪");
  }

}

// 貓屬於動物的一種，以class 設置了貓，並讓其繼承Animal
// 類別一但繼承了抽象類別，就必須要實踐那些抽象類別還沒有完成編寫的函數
class Cat extends Animal{

  // 貓類別的建構子，用戶輸入之後，完成Cat類別的物件建置，並將該些內容交付給父類別的建構子。
  Cat(String name) : super(name);

  // 由於Animal 抽象類別在此，沒有編寫函數，在此完成編寫，並加上@override，告知Dart覆蓋父類的同名函數
  @override

  // 調度echo函數時，必須印出 「喵」
  void echo() {
    print("喵");
  }

}
