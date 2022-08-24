import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/news_app/cubit/states.dart';

import 'cubit/cubit.dart';

class NewsLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppNewsCubit(),
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
                  fontSize: 16.0
                ),
              ),
            ),
            body: Cubit.Screens[Cubit.currentIndex],
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
