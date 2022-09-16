import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/cubit/cubit.dart';
import 'package:project1/layout/shop_app/cubit/states.dart';
import 'package:project1/modules/search/search_screen.dart';
import 'package:project1/modules/shop_app/login/shop_login_screen.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/network/local/cache_helper.dart';
import 'package:project1/modules/shop_app/search/search_screen.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopAppCubit,ShopAppStates>(
      listener: (context,state) {},
      builder: (context,state) {

        var Cubit = ShopAppCubit.get(context);

        return Scaffold(

          appBar: AppBar(
              title: const Text(
                'Salla',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            actions: [
              IconButton(
                  icon: const Icon(
                    Icons.search_sharp
                  ),
                onPressed: ()
                {
                  NavigateTo(context, SearchShopScreen());
                },
              ),
            ],
          ),
          body: Cubit.BottomScreens[Cubit.CurrentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index)
            {
              Cubit.ChangeBottom(index);
            },
            currentIndex: Cubit.CurrentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps),
                    label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favouries',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
