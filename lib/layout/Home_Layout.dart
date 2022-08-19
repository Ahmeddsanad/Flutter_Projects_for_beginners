import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project1/modules/ArchivedScreen/ArchivedToDoScreen.dart';
import 'package:project1/modules/DoneScreen/DoneToDoScreen.dart';
import 'package:project1/modules/TasksScreen/TasksToDoScreen.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

import '../shared/component/constants.dart';
import '../shared/cubit/cubit.dart';

class ScreensLayout extends StatelessWidget {
  late Database database ;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShown = false ;
  IconData FabIcon = Icons.edit;
  var titleController = TextEditingController();

  var timeController = TextEditingController();
  var dateController = TextEditingController();


  @override
  // void initState() {
  //   super.initState();
  //   CreateDataBase();
  // }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(
                  cubit.appbartext[cubit.currIndex],
                  style : const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            // body: tasks.isEmpty ?  const Center(child: CircularProgressIndicator()) : cubit.screens[cubit.currIndex],
            body: cubit.screens[cubit.currIndex],
            floatingActionButton: FloatingActionButton(
              onPressed:()
              {
                if(isBottomSheetShown){
                  if(formKey.currentState!.validate()){
                    insertDataBase(
                      title: titleController.text,
                      date: dateController.text,
                      time: timeController.text,
                    ).then((value) {
                      getFromDataBase(database).then((value) {
                        Navigator.pop(context);
                        // setState(()
                        // {
                        //   isBottomSheetShown = false ;
                        //   setState(() {
                        //     FabIcon = Icons.edit;
                        //   });
                        //
                        //   tasks = value ;
                        //   print(tasks);
                        // });
                      });
                    });
                  }
                }
                else
                {
                  isBottomSheetShown = true ;
                  // setState(() {
                  //   FabIcon = Icons.add;
                  // });
                  scaffoldKey.currentState!.showBottomSheet(
                        (context)=> Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              DefaultFormField(
                                Controller: titleController,
                                type: TextInputType.text,
                                validated: (String? value){
                                  if(value!.isEmpty){
                                    return 'title must not be empty';
                                  }
                                  return null ;
                                },
                                label: 'Task title',
                                prefix: Icons.title,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              DefaultFormField(
                                Controller: timeController,
                                type: TextInputType.datetime,
                                validated: (String? value){
                                  if(value!.isEmpty){
                                    return 'time must not be empty';
                                  }
                                  return null ;
                                },
                                label: 'Task time',
                                prefix: Icons.watch_later_outlined,
                                onTap: (){
                                  showTimePicker(context: context,
                                    initialTime: TimeOfDay.now(),
                                  ).then((value)
                                  {
                                    timeController.text = value!.format(context).toString();
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              DefaultFormField(
                                Controller: dateController,
                                type: TextInputType.datetime,
                                validated: (String? value){
                                  if(value!.isEmpty){
                                    return 'date must not be empty';
                                  }
                                  return null ;
                                },
                                label: 'Task date',
                                prefix: Icons.calendar_today,
                                onTap: (){
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.parse('2022-11-29'),
                                  ).then((value) {
                                    dateController.text = DateFormat.yMMMd().format(value!);
                                    print(DateFormat.yMMMd().format(value));
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    elevation: 30.0,
                  ).closed.then((value)
                  {
                    isBottomSheetShown = false ;
                    // setState(() {
                    //   FabIcon = Icons.edit;
                    // });
                  });
                }
              },
              child: Icon(
                  FabIcon
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currIndex,
              type:BottomNavigationBarType.fixed,
              onTap: (index){
                cubit.ChangeIndex(index) ;

                // setState(() {
                //   currIndex = index;
                //   print(index);
                // });

              },
              items:
              const [
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.menu
                    ),
                    label: 'Tasks'
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                      Icons.check_circle_outline
                  ),
                  label: 'Done',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.archive_outlined
                    ),
                    label: 'Archived'
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  /*Future<String> getName() async
  {
    return 'Ahmed Sanad';
  }*/

  void CreateDataBase() async
  {
    database = await openDatabase(
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
        getFromDataBase(database).then((value) {
          // setState(() {
          //   tasks = value ;
          //   print(tasks);
          // });
        });
        print('Database Opened') ;
      },
    );
  }
  Future insertDataBase({
    required title,
    required date,
    required time,
  }) async
  {
    return await database.transaction((txn) async
    {
      txn.rawInsert(
        'INSERT INTO tasks(title,date,time,status) VALUES("$title","$date","$time","new")',
      ).then((value) {
        print('$value inserted successfully');
      }).catchError((error){
        print('error when creating table ${error.toString()}');
      });

      return null ;
    });
  }

  Future<List<Map>> getFromDataBase(database) async
  {
    return await database.rawQuery('SELECT * FROM tasks');
  }
}
