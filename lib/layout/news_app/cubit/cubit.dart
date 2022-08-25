import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/news_app/cubit/states.dart';
import 'package:project1/modules/SettingsScreen/SettingsScreen.dart';
import 'package:project1/modules/business/businessScreen.dart';
import '../../../modules/science/ScienceScreen.dart';
import '../../../modules/sports/SportsScreen.dart';
import '../../../shared/network/remote/dio_helper.dart';

class AppNewsCubit extends Cubit<NewsStates> {
  AppNewsCubit() : super(AppNewsInitialState());

  static AppNewsCubit get(context) => BlocProvider.of(context);

  var currentIndex = 0;

  List<Widget> Screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen(),
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

  //List<Map> Business = [];
  List<dynamic> Business = [];

  void getBusiness()
  {
    emit(AppNewsGetDataLoadingState());
    DioHelper.getData(
        url: 'v2/everything',
        Query: {
          'q' : 'tesla',
          'from' : '2022-07-24',
          'sortBy' : 'publishedAt',
          'apiKey' : '8cf0ab8b4fa8438990ae6171e83c225b',
        }
    ).then((value) {
      // print(value.data.toString());
      Business = value.data['articles'];
      print(Business[1]['title']);
      emit(AppNewsGetDataSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(AppNewsGetDataErrorState(error.toString()));
    });
  }
}
