// ignore_for_file: non_constant_identifier_names, unrelated_type_equality_checks
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/modules/social_app/social_login/cubit/states.dart';


class SocialLoginCubit extends Cubit<SocialAppLoginStates>
{

  SocialLoginCubit() : super(SocialLoginInitialState());

  static SocialLoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
  required String email,
  required String password,
})
  {
    print('hi');
    emit(SocialLoginLoadingState());

    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    ).then((value) => {
      print(value.user?.email),
      print(value.user?.uid),
      emit(SocialLoginSuccessState(value.user!.uid)),
    }).catchError((error){
      emit(SocialLoginErrorState(error.toString()));
    });
  }


  IconData suffix = Icons.visibility_outlined;

  bool isPassword = true ;

  void changePasswordVisibility()
  {
  suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
  isPassword = !isPassword;

  emit(SocialLoginPasswordShownState());
  }
}
