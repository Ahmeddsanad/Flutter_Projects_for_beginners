// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/news_app/cubit/states.dart';
import 'package:project1/modules/search/search_screen.dart';
import '../../shared/component/components.dart';
import '../../shared/cubit/cubit.dart';
import 'cubit/cubit.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //create: (BuildContext context) => AppNewsCubit()..getBusiness()..getSports()..getScience(),
    //to download all bottom taps in launching app <----
    return BlocConsumer<AppNewsCubit,NewsStates>
      (
      listener: (context,state){},
      builder: (context,state){
        // ignore: non_constant_identifier_names
        var Cubit = AppNewsCubit.get(context) ;
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'News App',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  //color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: ()
                  {
                    NavigateTo(context,SearchScreen());
                  },
                  icon: const Icon(
                      Icons.search
                  )
              ),
              IconButton(
                  onPressed: (){
                    AppCubit.get(context).ChangeAppMode();
                  },
                  icon: const Icon(
                      Icons.brightness_4_outlined
                  )
              ),
            ],
          ),
          body: Cubit.Screens[Cubit.currentIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: ()
            {

            },
            child: const Icon(
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
    );
  }
}
