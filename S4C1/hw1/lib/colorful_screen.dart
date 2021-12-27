/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
設計三個按鍵與一個色塊Container，
點擊第一個按鍵時，隨機變換色塊Container的顏色；
點擊第二個按鍵時，隨機變換色塊Container的形狀；
點擊第三個按鍵時，切換回最初的原始設定

*/

import 'package:flutter/material.dart';

/*
設計StatefulWidget，設定新狀態與保存狀態
未來用戶操作頁面時，可即時更換該內容，對畫面重新渲染變化
*/
class ColorfulScreen extends StatefulWidget {
  
  // 判斷顏色
  bool currentColorisRed = true;

  // 判斷形狀
  bool currentShape = true;

  // 傳回一個類別為State<ColorfulDemoScreen>的物件
  @override
  State createState() {
    return _ColorfulScreenState();
  }

}


//建立State，供Stateful Widget觸發setState時，重新進行build函數，進行畫面繪製
class _ColorfulScreenState extends State<ColorfulScreen> {
  
  @override
  Widget build(BuildContext context) {
    print(this.widget.currentColorisRed);
    print(this.widget.currentShape);

    // 設定條件，決定顏色與形狀
    Widget colorfulContainer;
    if (this.widget.currentColorisRed == true && this.widget.currentShape == true) {
      colorfulContainer = Container(
        color: Colors.red,
        width: 300,
        height: 300,
      );
    } else if (this.widget.currentColorisRed == false && this.widget.currentShape == true) {
      colorfulContainer = Container(
        color: Colors.blue,
        width: 300,
        height: 300,
      );
    } else if (this.widget.currentColorisRed == true && this.widget.currentShape == false) {
      colorfulContainer = Container(
        color: Colors.red,
        width: 400,
        height: 200,
      );
    } else {
      colorfulContainer = Container(
        color: Colors.blue,
        width: 400,
        height: 200,
      );
    }
    

    // 設計三個按鍵與一個色塊Container
    return Scaffold(
      body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              
              
              // 點擊第一個按鍵時，隨機變換色塊Container的顏色
              Container(
                  
                child: TextButton(
                  child: Text("Change Color"),
                  
                  // 當點擊時，變化原Widget的currentColorisRed變數
                  onPressed: () {
                    // 觸發setState(){}，flutter會重新執行build函數，重新進行畫面渲染
                    setState(() {
                      print(this.widget.currentColorisRed);
                      // 變更原來Widget的屬性
                      this.widget.currentColorisRed =! this.widget.currentColorisRed;

                      print(this.widget.currentColorisRed);
                    });

                  },
                )
              ),
              
              // 點擊第二個按鍵時，隨機變換色塊Container的形狀
              Container(                                    
                child: TextButton(
                  child: Text("Change Shape"),

                  // 當點擊時，變化原Widget的currentColorisRed變數
                  onPressed: () {
                    // 觸發setState(){}，flutter會重新執行build函數，重新進行畫面渲染
                    setState(() {
                      print(this.widget.currentShape);
                      // 變更原來Widget的屬性
                      this.widget.currentShape = ! this.widget.currentShape;

                      print(this.widget.currentShape);
                    });
                  },
                )
              ),


              // 點擊第三個按鍵時，切換回最初的原始設定
              Container(                  
                child: TextButton(
                  child: Text("Initial Setting"),

                  // 當點擊時，變化原Widget的currentColorisRed變數
                  onPressed: () {
                    // 觸發setState(){}，flutter會重新執行build函數，重新進行畫面渲染
                    
                    setState(() {
                      
                      print(this.widget.currentShape);                      
                      // 如果Shape不為true，則變更原來Widget的屬性
                      if(this.widget.currentShape != true){
                        this.widget.currentShape = ! this.widget.currentShape;
                      }               
                      print(this.widget.currentShape);


                      print(this.widget.currentColorisRed);
                      // 如果Color不為red(true)，則變更原來Widget的屬性
                      if(this.widget.currentColorisRed != true){
                        this.widget.currentColorisRed = ! this.widget.currentColorisRed;
                      }                      
                      print(this.widget.currentColorisRed);

                    });
                  },
                  
                )
              ),
              
              
              // 將先前依照currentColorisRed的Widget，經畫面渲染後，置於此處。
              colorfulContainer
            ],
          )),
    );
  }
}
