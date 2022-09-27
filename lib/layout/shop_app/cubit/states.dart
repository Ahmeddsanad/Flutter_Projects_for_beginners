import 'package:project1/models/shop_app/change_favorites_model.dart';
import 'package:project1/models/shop_app/login_model.dart';

abstract class ShopAppStates {}

class ShopAppInitialState extends ShopAppStates {}

class ShopAppBottomNavState extends ShopAppStates {}

class ShopAppLoadingHomeDataState extends ShopAppStates {}

class ShopAppSuccessHomeDataState extends ShopAppStates {}

class ShopAppErrorHomeDataState extends ShopAppStates {}

class ShopAppSuccessCategoriesDataState extends ShopAppStates {}

class ShopAppErrorCategoriesDataState extends ShopAppStates {}

class ShopAppChangeFavoritesDataState extends ShopAppStates {}

class ShopAppLoadingFavoritesDataState extends ShopAppStates {}

class ShopAppSuccessChangeFavoritesDataState extends ShopAppStates
{
  final ChangeFavoritesModel model;

  ShopAppSuccessChangeFavoritesDataState(this.model);
}

class ShopAppErrorChangeFavoritesDataState extends ShopAppStates {}

class ShopAppSuccessGetFavoritesDataState extends ShopAppStates {}

class ShopAppErrorGetFavoritesDataState extends ShopAppStates {}

class ShopAppLoadingSettingsDataState extends ShopAppStates {}

class ShopAppSuccessSettingsDataState extends ShopAppStates
{
  final ShopLoginModel SettingsModel;

  ShopAppSuccessSettingsDataState(this.SettingsModel);
}

class ShopAppErrorSettingsDataState extends ShopAppStates {}

class ShopAppLoadingUpdateDataState extends ShopAppStates {}

class ShopAppSuccessUpdateDataState extends ShopAppStates
{
  final ShopLoginModel UpdateModel;

  ShopAppSuccessUpdateDataState(this.UpdateModel);
}

class ShopAppErrorUpdateDataState extends ShopAppStates {}