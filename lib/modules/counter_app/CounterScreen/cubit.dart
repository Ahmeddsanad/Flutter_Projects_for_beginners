import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/modules/counter_app/CounterScreen/states.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int Counter = 1 ;

  void MINUS(){
    if(Counter>0) {
      Counter--;
      emit(CounterMinusState(Counter));
    }
  }
  void PLUS(){
    Counter++;
    emit(CounterPlusState(Counter));
  }


}


