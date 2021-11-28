/*

Author: Meng-Shan Lee

ToDo:
剖析 https://jsonplaceholder.typicode.com/albums，
對其使用get方法，取回一系列json array，並取用第五個json object 。 
對其使用post方法，取得json object，上面傳回 資料編號的id


*/


// 為了讓json string 與 Map可進行轉換，得引用此套件
import "dart:convert";

// 引入套件
import 'package:http/http.dart' as http;


void main() async {
   
  // 將遠端網址，轉換成一個Uri型別的物件
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/albums');
  
  
  // 將此物件，置入dart程式語言的 http套件提供的get方法，使用http模組的get方法調度
  var response = await http.get(url);
  // 轉換成可操作的List
  List<dynamic> jsonObjectFromRemote = jsonDecode(response.body);
  // 調度裡面的欄位
  print(jsonObjectFromRemote[4]);
  
  
  // 使用http模組的post方法調度
  String postRequestJsonBody = jsonEncode(jsonObjectFromRemote[4]);
  var postResponse = await http.post(url,body: postRequestJsonBody);
  // 印出回應結果，確認回傳的json資料長相
  print(postResponse.body);

}