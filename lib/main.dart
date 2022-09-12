import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project1/layout/news_app/News_Layout.dart';
import 'package:project1/layout/news_app/cubit/cubit.dart';
import 'package:project1/layout/news_app/cubit/states.dart';
import 'package:project1/layout/todo_app/todo_Layout.dart';
import 'package:project1/modules/basics_app/login_Screen/Login_Screen.dart';
import 'package:project1/modules/search/search_screen.dart';
import 'package:project1/modules/shop_app/on_boarding_screen/on_boarding_screen.dart';
import 'package:project1/modules/testing/t1.dart';
import 'package:project1/shared/bloc_observer.dart';
import 'package:project1/shared/cubit/cubit.dart';
import 'package:project1/shared/cubit/states.dart';
import 'package:project1/shared/network/local/cache_helper.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';
import 'package:project1/shared/styles/themes.dart';
import 'modules/testing/LoginScreen2.dart';
import 'modules/testing/Messenger2.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  HttpOverrides.global = MyHttpOverrides();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  
  bool? isDark = CacheHelper.getBoolean(Key:'isDark');

  //notes that
  //bool isDarkened = isDark!; --> Null Safety Problem Solved ! by ---> ? , ! , ?? new operators and 'late' word before data type
  //  runApp(MyApp(false));

  // if(isDark == null) {
  //   return null;
  // }

  runApp(MyApp(isDark));
}
class MyApp extends StatelessWidget{

    final bool? isDark ;
    MyApp(this.isDark);

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(create: (context)=> AppNewsCubit()..getBusiness()..getSports()..getScience()),
        BlocProvider(create: (BuildContext context) => AppCubit()..ChangeAppMode(
            fromShared: isDark
        )),
      ],
      child:BlocConsumer<AppCubit,AppStates>(
        listener: (context,state) {},
        builder:  (context,state)
        {
          return MaterialApp(
            theme: lighttheme,
            debugShowCheckedModeBanner:false,
            darkTheme: darktheme,
            themeMode: AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: OnBoardingScreen(),
          );
        },
      ),
    );
  }

}

//
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}



//to solve error in using dio helper handshake errors we add like 393, 359,....
/*
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
*/
//and in the main scope
/*
HttpOverrides.global = MyHttpOverrides();
*/

