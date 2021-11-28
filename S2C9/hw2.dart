/*

Author: Meng-Shan Lee

ToDo:
設計一個主程序，會印出會議開始，
中間過程透過Future.delayed印出請老何訂購餐點，
再透過Future.microtask印出請老何訂機票，
最後在主程序印出會議結束


*/

void main() {
  // 印出會議開始
  print("會議開始");

  // 請老何訂購餐點，稍後執行
  Future.delayed(Duration(seconds: 1), () {
    print("請老何訂購餐點");
  });

  // 請老何訂機票
  Future.microtask(() {
    print('請老何訂機票');
  });

  // 會議結束
  print("會議結束");
}
