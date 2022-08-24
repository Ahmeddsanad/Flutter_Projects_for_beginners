import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/layout/news_app/News_Layout.dart';
import 'package:project1/layout/todo_app/todo_Layout.dart';
import 'package:project1/modules/BMIResultScreen/BMIResultScreen.dart';
import 'package:project1/modules/CounterScreen/CounterScreen.dart';
import 'package:project1/modules/CounterScreen/states.dart';
import 'package:project1/modules/HomeScreen/Home_Screen.dart';
import 'package:project1/modules/business/businessScreen.dart';
import 'package:project1/modules/login_Screen/Login_Screen.dart';
import 'package:project1/modules/Messenger/Messenger.dart';
import 'package:project1/modules/UsersScreen/UsersScreen.dart';
import 'package:project1/modules/BmiScreen/bmiScreen.dart';
import 'package:project1/modules/testing/t1.dart';
import 'package:project1/modules/withListView/withListView.dart';
import 'package:project1/shared/bloc_observer.dart';
import 'modules/testing/LoginScreen2.dart';
import 'modules/testing/Messenger2.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          backgroundColor: Colors.white,
          elevation: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.teal
        )
      ),
        debugShowCheckedModeBanner:false ,
      home: NewsLayout(),
    );
  }
  
}

