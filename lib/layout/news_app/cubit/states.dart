abstract class NewsStates {}

class AppNewsInitialState extends NewsStates {}

class AppNewsBottomNavState extends NewsStates {}

class AppNewsGetDataSuccessState extends NewsStates {}

class AppNewsGetDataLoadingState extends NewsStates {}

class AppNewsGetDataErrorState extends NewsStates {
  final String error;

  AppNewsGetDataErrorState(this.error);
}


