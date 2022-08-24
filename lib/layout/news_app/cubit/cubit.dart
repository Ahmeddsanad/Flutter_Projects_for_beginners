import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/news_app/cubit/states.dart';
import 'package:project1/modules/SettingsScreen/SettingsScreen.dart';
import 'package:project1/modules/business/businessScreen.dart';

import '../../../modules/science/ScienceScreen.dart';
import '../../../modules/sports/SportsScreen.dart';

class AppNewsCubit extends Cubit<NewsStates> {
  AppNewsCubit() : super(AppNewsInitialState());

  static AppNewsCubit get(context) => BlocProvider.of(context);

  var currentIndex = 0;

  List<Widget> Screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen()
  ];

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        icon:Icon(
          Icons.business
        ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
        icon:Icon(
            Icons.sports
        ),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
        icon:Icon(
            Icons.science
        ),
      label: 'Science',
    ),
    BottomNavigationBarItem(
        icon:Icon(
            Icons.settings
        ),
      label: 'Settings',
    ),
  ];

  void ChangeBottomNavBar(int index) {
    currentIndex = index;
    emit(AppNewsBottomNavState());
  }

}
