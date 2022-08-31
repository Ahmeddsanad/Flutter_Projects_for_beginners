import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project1/layout/news_app/News_Layout.dart';
import 'package:project1/layout/news_app/cubit/cubit.dart';
import 'package:project1/layout/news_app/cubit/states.dart';
import 'package:project1/layout/todo_app/todo_Layout.dart';
import 'package:project1/modules/BMIResultScreen/BMIResultScreen.dart';
import 'package:project1/modules/CounterScreen/CounterScreen.dart';
import 'package:project1/modules/CounterScreen/states.dart';
import 'package:project1/modules/HomeScreen/Home_Screen.dart';
import 'package:project1/modules/business/businessScreen.dart';
import 'package:project1/modules/login_Screen/Login_Screen.dart';
import 'package:project1/modules/Messenger/Messenger.dart';
import 'package:project1/modules/UsersScreen/UsersScreen.dart';
import 'package:project1/modules/BmiScreen/bmiScreen.dart';
import 'package:project1/modules/testing/t1.dart';
import 'package:project1/modules/withListView/withListView.dart';
import 'package:project1/shared/bloc_observer.dart';
import 'package:project1/shared/cubit/cubit.dart';
import 'package:project1/shared/cubit/states.dart';
import 'package:project1/shared/network/local/cache_helper.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';
import 'modules/testing/LoginScreen2.dart';
import 'modules/testing/Messenger2.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  
  bool? isDark = CacheHelper.getBoolean(Key:'isDark');

  bool isDarkened = isDark!;

  runApp(MyApp(isDarkened));
}
class MyApp extends StatelessWidget{

  final bool isDark ;
  MyApp(this.isDark);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..ChangeAppMode(
        fromShared: isDark
      ),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state) {},
        builder:  (context,state) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.teal,
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor: Colors.teal
                ),
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: AppBarTheme(
                    backwardsCompatibility: false,
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                    iconTheme: IconThemeData(
                        color: Colors.black
                    ),
                    titleTextStyle: TextStyle(
                      color:Colors.black
                    ),
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.white,
                        statusBarIconBrightness: Brightness.dark
                    )
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.teal,
                    unselectedItemColor: Colors.grey,
                    elevation: 20.0,
                    backgroundColor: Colors.white
                ),
                textTheme: TextTheme(
                    bodyText1: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color:Colors.black
                    )
                )
            ),
            debugShowCheckedModeBanner:false ,
            darkTheme: ThemeData(
                primarySwatch: Colors.teal,
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor: Colors.teal
                ),
                appBarTheme: AppBarTheme(
                    backwardsCompatibility: false,
                    backgroundColor: HexColor('333739'),
                    elevation: 0.0,
                    iconTheme: IconThemeData(
                        color: Colors.white
                    ),
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: HexColor('333739'),
                        statusBarIconBrightness: Brightness.light
                    ),
                    titleTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    )
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.teal,
                    unselectedItemColor: Colors.grey,
                    elevation: 20.0,
                    backgroundColor: HexColor('333739')
                ),
                scaffoldBackgroundColor: HexColor('333739'),
                textTheme: TextTheme(
                    bodyText1: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color:Colors.white
                    )
                )
            ),
            themeMode: AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: NewsLayout(),
          );
        },
      ),
    );
  }

}

