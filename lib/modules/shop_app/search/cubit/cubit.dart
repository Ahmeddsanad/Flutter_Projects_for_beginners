import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/models/shop_app/search_model.dart';
import 'package:project1/modules/shop_app/search/cubit/states.dart';
import 'package:project1/shared/component/constants.dart';
import 'package:project1/shared/network/end_points.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';

class SearchCubit extends Cubit<SearchStates>
{
  SearchCubit() : super(ShopAppInitialSearchState());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchModel? model;

  void Search(String text)
  {
    emit(ShopAppLoadingSearchState());

    DioHelper.postData(
        url: SEARCH,
        token: token,
        data:
        {
          'text' : text
        },
    ).then((value) {
      model = SearchModel.fromJson(value.data);

      emit(ShopAppSuccessSearchState());
    }).catchError((error){
      print(error.toString());
      emit(ShopAppErrorSearchState());
    });
  }

}