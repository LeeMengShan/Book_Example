/*

Author: Meng-Shan Lee

ToDo:
以Future的microtask為開頭，串接多個then方法，依序印出 
為了要做高效能的APP、我們必須知道異步分工合作、要知道Dart的異步分工機制、
透過建立一個新函數，並使用async與await、讓分工有順序性。

*/


// 在宣告方法後面加上async，讓Dart知道這個方法要透過await，
// 把語法變得像以前沒有使用Future與then串接那樣，
// 一樣可以使用以往的try catch, if else等等
void sentences() async {

  // 發起一個Future，讓Dart將這個任務進行異步分工
  // 透過await語法 要求必須等這個Future執行完，取回結果之後，才能往下執行
  String lastSentence = await Future.microtask((){
     return "為了要做高效能的APP";
  });
  
  // 當lastSentence是為了要做高效能的APP，則開始下個動作，
  // 並將lastSentence改為下一句話，以此類推
  if (lastSentence=="為了要做高效能的APP"){
    print(lastSentence);
    lastSentence  = "我們必須知道異步分工合作";
  }
  
  if (lastSentence=="我們必須知道異步分工合作"){
    print(lastSentence);
    lastSentence = "要知道Dart的異步分工機制";
  }
  if (lastSentence=="要知道Dart的異步分工機制"){
    print(lastSentence);
    lastSentence = "透過建立一個新函數";
  }
  if (lastSentence=="透過建立一個新函數"){
    print(lastSentence);
    lastSentence = "並使用async與await";
  }
  if (lastSentence=="並使用async與await"){
    print(lastSentence);
    lastSentence = "讓分工有順序性";
  }
 
  // 印出最終結果
  print(lastSentence);
  
}

void main() {

  //呼叫方法
  sentences();

}
