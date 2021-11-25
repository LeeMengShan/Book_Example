/*

Author: Meng-Shan Lee

ToDo:
現在有一家公司，
股本為100萬、公司營收為500萬、
員工平均薪資為4萬元、員工人數5人、
公司運營雜支基礎值為200萬、勞健保以每人10000計算、營所稅20%。
請依照下面的條件，設計一個存股判斷機，

營收為主要變數
公司營收的百分之五，必須課徵5%的營業稅。
每多一位員工，公司運營雜支必須增加一萬二。
營收扣除員工總薪資及運營雜支後，必須課徵20%的營業稅
公司盈餘除以公司股本為公司每股盈餘

若公司每股盈餘大於5元，則印出 好投資標的
若公司每股盈餘介於2元到5元之間，則印出 可投資標的
若公司每股盈餘2元以下，則印出 建議看其他家


*/

void main() {

  // 宣告變數
  double shareCapital = 1000000;
  double revenue = 5000000;
  double salary = 40000;
  int staff = 5;
  double earningPerShare;

  // 公司營收的百分之五，必須課徵5%的營業稅。
  revenue -= revenue * 0.05 * 0.05;
  // 每多一位員工，公司運營雜支必須增加一萬二。
  // 從營收扣除運營雜支
  revenue -= 12000 * staff;
  // 營收扣除員工總薪資
  revenue -= salary * staff;
  // 課徵20%的營業稅
  revenue = revenue * 0.8;
  // 公司盈餘除以公司股本為公司每股盈餘
  earningPerShare = revenue / shareCapital;

  
  //判斷
  if (earningPerShare > 5) {

    // 若公司每股盈餘大於5元，則印出 好投資標的
    print('好投資標的');

  } else if (earningPerShare > 2) {

    // 若公司每股盈餘介於2元到5元之間，則印出 可投資標的
    print('可投資標的');

  } else {

    // 若公司每股盈餘2元以下，則印出 建議看其他家
    print('建議看其他家');

  }
}
