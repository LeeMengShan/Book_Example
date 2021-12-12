/*
Author: Meng-Shan Lee
https://www.linkedin.com/in/meng-shan-lee-188035227/

*/

import 'package:flutter/material.dart';
import 'package:hw1/homeScreen.dart';

class AppEntryPoint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen()
    );
  }
}

void main() {
  runApp(AppEntryPoint());
}
