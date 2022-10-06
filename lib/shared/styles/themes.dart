import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project1/shared/styles/colors.dart';

ThemeData darktheme = ThemeData(
    primarySwatch: defaultColor,
    floatingActionButtonTheme:const FloatingActionButtonThemeData(
        backgroundColor: defaultColor
    ),
    appBarTheme: AppBarTheme(
        backwardsCompatibility: false,
        backgroundColor: HexColor('333739'),
        elevation: 0.0,
        iconTheme:const IconThemeData(
            color: Colors.white
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor('333739'),
            statusBarIconBrightness: Brightness.light
        ),
        titleTextStyle:const  TextStyle(
            fontFamily: 'Jannah',
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: defaultColor,
        unselectedItemColor: Colors.grey,
        elevation: 20.0,
        backgroundColor: HexColor('333739')
    ),
    scaffoldBackgroundColor: HexColor('333739'),
    textTheme: const TextTheme(
        bodyText1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600, color:Colors.white
        )
    ),
    fontFamily: 'Jannah',
);

ThemeData lighttheme = ThemeData(
    primarySwatch: defaultColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: defaultColor
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        backwardsCompatibility: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        titleTextStyle: TextStyle(
            fontFamily: 'Jannah',
            color:Colors.black
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark
        )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: defaultColor,
        unselectedItemColor: Colors.grey,
        elevation: 20.0,
        backgroundColor: Colors.white
    ),
    textTheme: const TextTheme(
        bodyText1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color:Colors.black
        )
    ),
    fontFamily: 'Jannah',
);