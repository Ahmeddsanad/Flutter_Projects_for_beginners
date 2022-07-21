import 'package:flutter/material.dart';
import 'package:project1/BMIResultScreen.dart';
import 'package:project1/CounterScreen.dart';
import 'package:project1/Home_Screen.dart';
import 'package:project1/Login_Screen.dart';
import 'package:project1/Messenger.dart';
import 'package:project1/UsersScreen.dart';
import 'package:project1/bmiScreen.dart';
import 'package:project1/t1.dart';
import 'package:project1/withListView.dart';

import 'LoginScreen2.dart';
import 'Messenger2.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false ,
      home: bmiScreen(),
    );
  }
  
}

