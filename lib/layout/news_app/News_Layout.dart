
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/news_app/cubit/states.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';
import 'cubit/cubit.dart';

class NewsLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppNewsCubit()..getBusiness(),
      child: BlocConsumer<AppNewsCubit,NewsStates>(
        listener: (context,state){},
        builder: (context,state){
          var Cubit = AppNewsCubit.get(context) ;
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'News App',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.search
                    )
                ),
              ],
            ),
            body: Cubit.Screens[Cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: ()
              {

              },
              child: Icon(
                Icons.add
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: Cubit.bottomItems,
              currentIndex: Cubit.currentIndex,
              onTap: (int index){
                Cubit.ChangeBottomNavBar(index);
              },
            ),
          );
        },
      ),
    );
  }
}
