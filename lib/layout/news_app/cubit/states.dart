abstract class NewsStates {}

class AppNewsInitialState extends NewsStates {}

class AppNewsBottomNavState extends NewsStates {}

class AppNewsGetBusinessSuccessState extends NewsStates {}

class AppNewsGetBusinessLoadingState extends NewsStates {}

class AppNewsGetBusinessErrorState extends NewsStates {
  final String error;

  AppNewsGetBusinessErrorState(this.error);
}

class AppNewsGetSportsSuccessState extends NewsStates {}

class AppNewsGetSportsLoadingState extends NewsStates {}

class AppNewsGetSportsErrorState extends NewsStates {
  final String error;

  AppNewsGetSportsErrorState(this.error);
}

class AppNewsGetScienceSuccessState extends NewsStates {}

class AppNewsGetScienceLoadingState extends NewsStates {}

class AppNewsGetScienceErrorState extends NewsStates {
  final String error;

  AppNewsGetScienceErrorState(this.error);
}

class AppNewsDarkModeState extends NewsStates {}


