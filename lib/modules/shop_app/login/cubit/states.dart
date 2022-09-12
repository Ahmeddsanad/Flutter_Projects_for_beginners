import 'package:project1/models/shop_app/login_model.dart';

abstract class ShopAppLoginStates {}

class ShopLoginInitialState extends ShopAppLoginStates {}

class ShopLoginLoadingState extends ShopAppLoginStates {}

class ShopLoginSuccessState extends ShopAppLoginStates
{
  // ignore: non_constant_identifier_names
  final ShopLoginModel loginModel;

  ShopLoginSuccessState(this.loginModel);
}

class ShopLoginErrorState extends ShopAppLoginStates
{
  final String error;

  ShopLoginErrorState(this.error);
}

class ShopLoginPasswordShownState extends ShopAppLoginStates {}