// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/cubit/states.dart';
import 'package:project1/models/shop_app/categories_model.dart';
import 'package:project1/models/shop_app/change_favorites_model.dart';
import 'package:project1/models/shop_app/favorites_model.dart';
import 'package:project1/models/shop_app/home_model.dart';
import 'package:project1/models/shop_app/login_model.dart';
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

  Map<int, bool> favorites = {};

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

      homeModel?.data?.products.forEach((element)
      {
            favorites.addAll({
              element.id : element.inFavorites,
            });
      });

      printFullText(favorites.toString());


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

      // print(categoriesModel?.data?.data[0]);
      emit(ShopAppSuccessCategoriesDataState());
    }).catchError((error)
    {
      printFullText(error.toString());
      emit(ShopAppErrorCategoriesDataState());
    });
  }

  late ChangeFavoritesModel changeFavoritesModel;

  void ChangeFAVORITES(dynamic productId)
  {
    favorites[productId] = !favorites[productId]!;
    emit(ShopAppChangeFavoritesDataState());

    DioHelper.postData(
        url: FAVORITES,
        data:
        {
          'product_id' : productId,
        },
        token: token,
    ).then((value) {
      changeFavoritesModel = ChangeFavoritesModel.fromJson(value.data);
      print(value.data);

      if(changeFavoritesModel.status == false)
        {
          favorites[productId] = !favorites[productId]!;
        }else
        {
          getFavorites();
        }

      emit(ShopAppSuccessChangeFavoritesDataState(changeFavoritesModel));
    }).catchError((error)
    {
      favorites[productId] = !favorites[productId]!;
      print(error.toString());
      try {
        emit(ShopAppErrorChangeFavoritesDataState());
      } catch (e, s) {
        print(s);
      }
    });
  }

  FavoritesModel? favoritesModel;

  void getFavorites()
  {
    emit(ShopAppLoadingFavoritesDataState());
    DioHelper.getData(
      url: FAVORITES,
      token:token,
    ).then((value) {
      //print(value.toString()); --> successfully running
      // printFullText(value.toString());

      favoritesModel = FavoritesModel?.fromJson(value.data);
      // printFullText(value.data.toString());
      // print(categoriesModel?.data?.data[0]);
      emit(ShopAppSuccessGetFavoritesDataState());
    }).catchError((error)
    {
      printFullText(error.toString());
      emit(ShopAppErrorGetFavoritesDataState());
    });
  }

  late ShopLoginModel AllUserData;

  void getAllUserData()
  {
    emit(ShopAppLoadingSettingsDataState());
    DioHelper.getData(
      url: PROFILE,
      token:token,
    ).then((value) {
      AllUserData = ShopLoginModel?.fromJson(value.data);

      printFullText(AllUserData.data!.name);

      emit(ShopAppSuccessSettingsDataState(AllUserData));
    }).catchError((error)
    {
      printFullText(error.toString());
      emit(ShopAppErrorSettingsDataState());
    });
  }

  void UpdateUserData({
  required dynamic name,
  required dynamic email,
  required dynamic phone,
})
  {
    emit(ShopAppLoadingUpdateDataState());
    DioHelper.putData(
      url: UPDATE_PROFILE,
      token:token,
      data:
      {
        name : 'name',
        email : 'email',
        phone : 'phone',
      }
    ).then((value) {
      AllUserData = ShopLoginModel?.fromJson(value.data);

      printFullText(AllUserData.data?.name);

      emit(ShopAppSuccessUpdateDataState(AllUserData));
    }).catchError((error)
    {
      printFullText(error.toString());
      emit(ShopAppErrorUpdateDataState());
    });
  }
}