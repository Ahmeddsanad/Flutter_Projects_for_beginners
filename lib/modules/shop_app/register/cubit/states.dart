import 'package:project1/models/shop_app/login_model.dart';

abstract class ShopAppRegisterStates {}

class ShopRegisterInitialState extends ShopAppRegisterStates {}

class ShopRegisterLoadingState extends ShopAppRegisterStates {}

class ShopRegisterSuccessState extends ShopAppRegisterStates
{
  // ignore: non_constant_identifier_names
  final ShopLoginModel loginModel;

  ShopRegisterSuccessState(this.loginModel);
}

class ShopRegisterErrorState extends ShopAppRegisterStates
{
  final String error;

  ShopRegisterErrorState(this.error);
}

class ShopRegisterPasswordShownState extends ShopAppRegisterStates {}