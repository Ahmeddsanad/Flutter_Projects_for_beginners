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

class SocialNewPostState extends SocialAppStates {}

class SocialProfilePickedSuccessState extends SocialAppStates {}

class SocialProfilePickedErrorState extends SocialAppStates {}

class SocialCoverPickedSuccessState extends SocialAppStates {}

class SocialCoverPickedErrorState extends SocialAppStates {}
