// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/models/shop_app/login_model.dart';
import 'package:project1/modules/shop_app/login/cubit/states.dart';
import 'package:project1/shared/network/end_points.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';




class ShopLoginCubit extends Cubit<ShopAppLoginStates>
{

  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

  ShopLoginModel? LoginModel;

  void userLogin({
  required String email,
  required String password,
})
  {
    emit(ShopLoginLoadingState());

    DioHelper.postData(
      url: LOGIN,
      data:
      {
        'email' : email,
        'password' : password,
      },
    ).then((value){
        // if(value.data == null)
        // {
        //   return ShopLoginModel.fromJson(value.data! as Map<String, dynamic>);
        // }
        // print(LoginModel.data.id);
      // print(LoginModel.status);
      // print(LoginModel.message);
      // print(LoginModel.data.token);
      // LoginModel != null ? ShopLoginModel?.fromJson(value.data) : null;
        // print(LoginModel?.message);
        // print(LoginModel?.data);
      print(value.data);
      LoginModel = ShopLoginModel.fromJson(value.data);
      emit(ShopLoginSuccessState(LoginModel!));
    }).catchError((error){
      emit(ShopLoginErrorState(error.toString()));
      print(error.toString());
    });
  }


  IconData suffix = Icons.visibility_outlined;

  bool isPassword = true ;

  void changePasswordVisibility()
  {
  suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
  isPassword = !isPassword;

  emit(ShopLoginPasswordShownState());
  }
}
