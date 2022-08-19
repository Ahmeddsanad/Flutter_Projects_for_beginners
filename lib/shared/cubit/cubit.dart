import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/shared/cubit/states.dart';

import '../../modules/ArchivedScreen/ArchivedToDoScreen.dart';
import '../../modules/DoneScreen/DoneToDoScreen.dart';
import '../../modules/TasksScreen/TasksToDoScreen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  var currIndex = 0 ;

  List<Widget> screens =
  [
    TaskstodoScreen(),
    DonetodoScreen(),
    ArchivedtodoScreen(),
  ];

  List<String> appbartext =
  [
    'Tasks Page',
    'Done Page',
    'Archived page',
  ];

  void ChangeIndex(int index){
    currIndex = index ;
    emit(AppChangeBottomNavBarState());
  }
}