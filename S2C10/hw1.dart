/*

Author: Meng-Shan Lee

ToDo:
以Future的microtask為開頭，串接多個then方法，依序印出 
為了要做高效能的APP、我們必須知道異步分工合作、
要知道Dart的異步分工機制、可以使用Future、並透過then方法、讓分工有順序性。


*/

void main() {
  Future.microtask(() {

    return "為了要做高效能的APP";

  }).then((sentence1) {

    // 印出為了要做高效能的APP
    print(sentence1);
    return "我們必須知道異步分工合作";

  }).then((sentence2) {

    // 印出我們必須知道異步分工合作
    print(sentence2);
    return "要知道Dart的異步分工機制";

  }).then((sentence3) {

    // 印出要知道Dart的異步分工機制
    print(sentence3);
    return "可以使用Future";

  }).then((sentence4) {

    // 印出可以使用Future
    print(sentence4);
    return "並透過then方法";
    
  }).then((sentence5) {

    // 印出並透過then方法
    print(sentence5);
    return "讓分工有順序性";

  }).then((sentence6) {

    // 印出讓分工有順序性
    print(sentence6);

  });
}
