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
import 'package:hw1/colorful_screen.dart';


void main() {
  runApp( AppEntryPoint());
}

class AppEntryPoint extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: 
          Colors.blue,
          
      ),
      routes:{
        "/color-demo":(BuildContext context)=>ColorfulScreen(),
      },
      initialRoute: "/color-demo",
      
    );
  }
}