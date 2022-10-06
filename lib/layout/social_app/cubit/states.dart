abstract class SocialAppStates {}

class SocialInitialState extends SocialAppStates {}

class SocialGetUserLoadingState extends SocialAppStates {}

class SocialGetUserSuccessState extends SocialAppStates {}

class SocialGetUserErrorState extends SocialAppStates
{
  final String error;

  SocialGetUserErrorState(this.error);
}

class SocialChangeBottomNavState extends SocialAppStates {}