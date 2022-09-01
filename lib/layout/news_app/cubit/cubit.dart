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
  ];

  void ChangeBottomNavBar(int index) {
    currentIndex = index;
    if(index == 1)
      getSports();
    if(index == 2)
      getScience();
    emit(AppNewsBottomNavState());
  }

  //List<Map> Business = [];
  List<dynamic> Business = [];

  void getBusiness()
  {
    emit(AppNewsGetBusinessLoadingState());

    if(Business.isEmpty)
    {
      DioHelper.getData(
          url: 'v2/everything',
          Query: {
            'q' : 'business',
            'from' : '2022-08-26',
            'to' : '2022-08-26',
            'sortBy' : 'popularity',
            'apiKey' : '8cf0ab8b4fa8438990ae6171e83c225b',
          }
      ).then((value) {
        // print(value.data.toString());
        Business = value.data['articles'];
        print(Business[1]['title']);
        emit(AppNewsGetBusinessSuccessState());
      }).catchError((error){
        print(error.toString());
        emit(AppNewsGetBusinessErrorState(error.toString()));
      });
    }
    else{
      emit(AppNewsGetBusinessSuccessState());
    }
  }

  List<dynamic> Sports = [];

  void getSports()
  {

    emit(AppNewsGetSportsLoadingState());

    if(Sports.isEmpty){
      DioHelper.getData(
          url: 'v2/everything',
          Query: {
            'q' : 'sports',
            'from' : '2022-08-26',
            'to' : '2022-08-26',
            'sortBy' : 'popularity',
            'apiKey' : '8cf0ab8b4fa8438990ae6171e83c225b',
          }
      ).then((value) {
        // print(value.data.toString());
        Sports = value.data['articles'];
        print(Sports[1]['title']);
        emit(AppNewsGetSportsSuccessState());
      }).catchError((error){
        print(error.toString());
        emit(AppNewsGetSportsErrorState(error.toString()));
      });
    }
    else{
      emit(AppNewsGetSportsSuccessState());
    }
  }

  List<dynamic> Science = [];

  void getScience()
  {
    emit(AppNewsGetScienceLoadingState());

    if(Science.isEmpty){
      DioHelper.getData(
          url: 'v2/everything',
          Query: {
            'q' : 'science',
            'from' : '2022-08-26',
            'to' : '2022-08-26',
            'sortBy' : 'popularity',
            'apiKey' : '8cf0ab8b4fa8438990ae6171e83c225b',
          }
      ).then((value) {
        // print(value.data.toString());
        Science = value.data['articles'];
        print(Science[1]['title']);
        emit(AppNewsGetScienceSuccessState());
      }).catchError((error){
        print(error.toString());
        emit(AppNewsGetScienceErrorState(error.toString()));
      });
    }
    else{
      emit(AppNewsGetScienceSuccessState());
    }

  }

  List<dynamic> Search = [];

  void getSearch(String value)
  {
    emit(AppNewsGetSearchLoadingState());

    //Search = [];

    DioHelper.getData(
        url: 'v2/everything',
        Query: {
          'q' : '$value',
          'apiKey' : '8cf0ab8b4fa8438990ae6171e83c225b',
        }
    ).then((value) {
      // print(value.data.toString());
      Search = value.data['articles'];
      //print(Search[1]['title']);
      emit(AppNewsGetSearchSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(AppNewsGetSearchErrorState(error.toString()));
    });
  }


  bool isDark = false ;

  void ChangeAppNewsThemeMode()
  {
    isDark = !isDark;
    emit(AppNewsDarkModeState());
  }
}
