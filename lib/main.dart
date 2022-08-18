import 'package:flutter/material.dart';
import 'package:project1/layout/Screen_Layout.dart';
import 'package:project1/modules/BMIResultScreen/BMIResultScreen.dart';
import 'package:project1/modules/CounterScreen/CounterScreen.dart';
import 'package:project1/modules/CounterScreen/states.dart';
import 'package:project1/modules/HomeScreen/Home_Screen.dart';
import 'package:project1/modules/login_Screen/Login_Screen.dart';
import 'package:project1/modules/Messenger/Messenger.dart';
import 'package:project1/modules/UsersScreen/UsersScreen.dart';
import 'package:project1/modules/BmiScreen/bmiScreen.dart';
import 'package:project1/modules/testing/t1.dart';
import 'package:project1/modules/withListView/withListView.dart';
import 'modules/testing/LoginScreen2.dart';
import 'modules/testing/Messenger2.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false ,
      home: CounterScreen(),
    );
  }
  
}

