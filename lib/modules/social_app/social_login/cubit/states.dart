abstract class SocialAppLoginStates {}

class SocialLoginInitialState extends SocialAppLoginStates {}

class SocialLoginLoadingState extends SocialAppLoginStates {}

class SocialLoginSuccessState extends SocialAppLoginStates
{
  final String uId;

  SocialLoginSuccessState(this.uId);
}

class SocialLoginErrorState extends SocialAppLoginStates
{
  final String error;

  SocialLoginErrorState(this.error);
}

class SocialLoginPasswordShownState extends SocialAppLoginStates {}