import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

import '../../modules/ArchivedScreen/ArchivedToDoScreen.dart';
import '../../modules/DoneScreen/DoneToDoScreen.dart';
import '../../modules/TasksScreen/TasksToDoScreen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  var currIndex = 0 ;
  late Database database ;
  List<Map> NewTasks = [];
  List<Map> DoneTasks = [];
  List<Map> ArchivedTasks= [];
  bool isBottomSheetShown = false ;
  IconData FabIcon = Icons.edit;

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

  void CreateDataBase()
  {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database,version){
        print('DataBase Created');
        database.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, time TEXT, date TEXT, status TEXT)').then((value)
        {
          print('table created');
        }).catchError((error){
          print('error when creating table ${error.toString()}');
        });
      },
      onOpen: (database){
        getFromDataBase(database);
        print('Database Opened') ;
      },
    ).then((value) {
      database = value;
      emit(AppCreateDataBaseState());
    });
  }
  insertDataBase({
    required title,
    required date,
    required time,
  }) async
  {
    await database.transaction((txn) async
    {
      txn.rawInsert(
        'INSERT INTO tasks(title,date,time,status) VALUES("$title","$date","$time","new")',
      ).then((value) {
        print('$value inserted successfully');
        emit(AppInsertDataBaseState());

        getFromDataBase(database);
      }).catchError((error){
        print('error when creating table ${error.toString()}');
      });

      return null ;
    });
  }

  void getFromDataBase(database)
  {
    NewTasks = [];
    DoneTasks = [];
    ArchivedTasks = [];

    emit(AppGetDataBaseLoadingState());

    database.rawQuery('SELECT * FROM tasks').then((value) {
      // NewTasks = value ;
      // print(NewTasks);

      value.forEach((element) {
        if(element['status'] == 'new') {
          NewTasks.add(element);
        }
        else if(element['status'] == 'done'){
          DoneTasks.add(element);
        }
        else{
          ArchivedTasks.add(element);
        }
      });

      emit(AppGetDataBaseState());
    });
  }


  void ChangeBottomSheetState({
    required bool isShow,
    required IconData icon,
}){
    isBottomSheetShown = isShow;
    FabIcon = icon ;
    emit(AppChangeBottomSheetState());
  }


  void updateData({
  required String status,
  required int id ,
}) async
  {
    database.rawUpdate(
        'UPDATE tasks SET status = ? WHERE id = ?',
        ['$status', '$id' ],

    ).then((value) {
      getFromDataBase(database);
      emit(AppUpdateDataBaseLoadingState());
    });
  }

  void DeleteData({
    required int id ,
  }) async
  {
    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id])
        .then((value) {
      getFromDataBase(database);
      emit(AppDeleteDataBaseLoadingState());
    });
  }


  bool isDark = false;

  void ChangeAppMode()
  {
    isDark = !isDark;
    emit(AppNewsDarkModeState());
  }
}