/*

Author: Meng-Shan Lee

ToDo:
http套件的get與post行為，其實會傳入一個Future內進行操作，
重建立一個async函數，在裡面以http套件結合Future與await的方式，
將https://jsonplaceholder.typicode.com/users/1 的 json資料爬取下來，
並印出phone欄位的內容

*/



// 為了讓json string 與 Map可進行轉換，得引用此套件
import "dart:convert";

// 引入套件
import 'package:http/http.dart' as http;

void phone() async {
  
  // 生成Uri物件
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  
  // 使用http模組的get方法調度
  var response = await http.get(url);
  
  // 轉換成可操作的dart Map
  Map<String, dynamic> jsonObjectFromRemote = jsonDecode(response.body);
  print(jsonObjectFromRemote['phone']);
  
}  

void main() async {
    
  // 呼叫方法，印出phone欄位的內容
  phone();
  
}
