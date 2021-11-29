/*

Author: Meng-Shan Lee

ToDo:
重新切割成多函數的方式，並搭配async/await，讓程式碼看起來更簡潔一些

剖析 https://jsonplaceholder.typicode.com/posts，
對其使用get方法，取回一系列json array，並取用第五個json object 。 
對其使用post方法，取得json object，上面傳回 資料編號的id


*/


// 為了讓json string 與 Map可進行轉換，得引用此套件
import "dart:convert";

// 引入套件
import 'package:http/http.dart' as http;

// 使用get方法，取回一系列json array
Future<List<dynamic>> getRemoteSystemData(String remoteUri) async {
  
  // 生成Uri物件
  Uri mutipleItemUrl = Uri.parse(remoteUri);
  
  // 使用http模組的get方法調度
  // 本應為Future<http.Response>，透過await，從Future取值後，型態宣告成http.Response
  http.Response multipleResponses = await http.get(mutipleItemUrl);
  
  // 轉換成可操作的dart List
  List<dynamic> jsonArrayFromRemote = jsonDecode(multipleResponses.body);
  
  // 將結果傳回
  return jsonArrayFromRemote;
  
}

// 使用post方法，取得json object，上面傳回 資料編號的id
Future<String> postRemoteSystemData(String remoteUri) async {
  
  // 生成Uri物件
  Uri mutipleItemUrl = Uri.parse(remoteUri);
  
  // 使用http模組的post方法調度，並順道傳入資料內容
  String postRequestJsonBody = jsonEncode({"userId":"99","title":'雲育鏈',"body":'半夜寫程式，累啊。'});
  var postResponse = await http.post(mutipleItemUrl,body: postRequestJsonBody);
  
  // 傳回回應結果，確認回傳的json資料長相
  return postResponse.body;
  
}



void main() async {
  
  // 調度getRemoteSystemData函數，並等待其傳回的Future完成
  List<dynamic> jsonArrayResponse = await getRemoteSystemData('https://jsonplaceholder.typicode.com/posts');
  // 印出第五個json object
  print(jsonArrayResponse[4]);
  
  
  // 調度postRemoteSystemData函數，並等待其傳回的Future完成
  String jsonArrayResponse2 = await postRemoteSystemData('https://jsonplaceholder.typicode.com/posts');
  // 印出資料編號的id
  print(jsonArrayResponse2);
  
  }
