/*

Author: Meng-Shan Lee

ToDo:
接續上一題，家庭後來有了女兒daughter，女兒叫作 李小花，
請為先前建置的Map，追加一個新的鍵值。

*/

void main() {
  // Map的key是father, mother...，是字串型態
  // Map的value是名字，也是字串型態
  Map<String, String> family = {
    // key: value,
    'father': '李小鴻',
    'mother': '秉鴻李',
    'son': '李小秉'
  };

  // 追加一個新的鍵值
  family.addAll({'daughter': '李小花'});

}
