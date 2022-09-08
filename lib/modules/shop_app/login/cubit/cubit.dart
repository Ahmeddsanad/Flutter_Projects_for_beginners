import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/modules/shop_app/login/cubit/states.dart';
import 'package:project1/shared/network/end_points.dart';
import 'package:project1/shared/network/remote/dio_helper.dart';

class ShopLoginCubit extends Cubit<ShopAppLoginStates>
{
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

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
        print(value.data);
        emit(ShopLoginSuccessState());
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
