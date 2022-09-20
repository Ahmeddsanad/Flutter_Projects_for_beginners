// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/cubit/states.dart';
import 'package:project1/models/shop_app/categories_model.dart';
import 'package:project1/models/shop_app/home_model.dart';
import 'package:project1/modules/shop_app/categories/categories_screen.dart';
import 'package:project1/modules/shop_app/favourites/favourite_screen.dart';
import 'package:project1/modules/shop_app/products/products_screen.dart';
import 'package:project1/modules/shop_app/settings/SettingsScreen.dart';
import 'package:project1/shared/component/constants.dart';
import 'package:project1/shared/network/end_points.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';


class ShopAppCubit extends Cubit<ShopAppStates>
{
  ShopAppCubit() : super(ShopAppInitialState());

  static ShopAppCubit get(context) => BlocProvider.of(context);

  int CurrentIndex = 0;

  List<Widget> BottomScreens =
  [
    ProductsScreen(),
    CategoriesScreen(),
    FavouriteScreen(),
    SettingsScreen(),
  ];

  void ChangeBottom(int index)
  {
    CurrentIndex = index;
    emit(ShopAppBottomNavState());
  }

  HomeModel? homeModel;

  void getHomeData()
  {

    emit(ShopAppLoadingHomeDataState());

    DioHelper.getData(
        url: HOME,
        token:token,
    ).then((value) {
      //print(value.toString()); --> successfully running
      //printFullText(value.toString());

      homeModel = HomeModel.fromJson(value.data);


      // print(homeModel?.data?.banners[0].image);

      // print(homeModel?.data?.products[0].image);

      // print(homeModel?.status);

      emit(ShopAppSuccessHomeDataState());
    }).catchError((error)
    {
      printFullText(error.toString());
      emit(ShopAppErrorHomeDataState());
    });
  }

  CategoriesModel? categoriesModel;

  void getCategories()
  {

    DioHelper.getData(
      url: GET_CATEGORIES,
      // token:token,
    ).then((value) {
      //print(value.toString()); --> successfully running
      // printFullText(value.toString());

      categoriesModel = CategoriesModel.fromJson(value.data);

      print(categoriesModel?.data?.data?[0]);
      emit(ShopAppSuccessCategoriesDataState());
    }).catchError((error)
    {
      printFullText(error.toString());
      emit(ShopAppErrorCategoriesDataState());
    });
  }
}