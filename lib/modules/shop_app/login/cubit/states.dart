abstract class ShopAppLoginStates {}

class ShopLoginInitialState extends ShopAppLoginStates {}

class ShopLoginLoadingState extends ShopAppLoginStates {}

class ShopLoginSuccessState extends ShopAppLoginStates {}

class ShopLoginErrorState extends ShopAppLoginStates
{
  final String error;

  ShopLoginErrorState(this.error);
}

class ShopLoginPasswordShownState extends ShopAppLoginStates {}