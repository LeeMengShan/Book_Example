/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

ToDo:
設定兩個Container Widget，
一個底色為藍色，另一個底色為黃色，
藍色為基底父Widget，黃色為子Widget。
黃色Widget須在藍色Widget內的左下方位置。

*/

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        // 最高父Widget為Scaffold，
        body: Container(

          // 要求第二層Container放在左下方
          alignment: Alignment.bottomLeft,

          // 第一層Container的長寬
          width:500,
          height:500,

          // 第一層Container底色為藍色
          color: Colors.blue,


          // 設定子Widget
          child: Container(

            // 第二層長寬不可超過第一層
            width:200,
            height:200,

            // 第二層Container底色為黃色
            color: Colors.yellow,

          ),
        )
    );
  }
}
