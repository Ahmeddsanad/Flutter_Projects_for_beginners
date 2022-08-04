import 'package:flutter/material.dart';
import 'package:project1/modules/ArchivedScreen/ArchivedToDoScreen.dart';
import 'package:project1/modules/DoneScreen/DoneToDoScreen.dart';
import 'package:project1/modules/TasksScreen/TasksToDoScreen.dart';

class ScreensLayout extends StatefulWidget {
  const ScreensLayout({Key? key}) : super(key: key);


  @override
  State<ScreensLayout> createState() => _ScreensLayoutState();
}

class _ScreensLayoutState extends State<ScreensLayout> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appbartext[currIndex],
          style : TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          )
        ),
      ),
      body: screens[currIndex],
      floatingActionButton: FloatingActionButton(
          onPressed:() async
          {
            try{
              var name = await getName();
              print(name);
              //throw('انا عملت ايرور') ;
            }catch(error){
            print('error ${error.toString()}');
            }
          },
          child: Icon(
          Icons.add,
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        type:BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currIndex = index;
            print(index);
          });
        },
        items: [
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
  }
  Future<String> getName() async
  {
    return 'Ahmed Sanad';
  }
}
