import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/modules/counter_app/CounterScreen/cubit.dart';
import 'package:project1/modules/counter_app/CounterScreen/states.dart';


class CounterScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if(state is CounterMinusState){
            // print('Minus state ${state.counter}');
          }
          if(state is CounterPlusState){
            // print('Plus state ${state.counter}');
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                  'Counter',
                  style:TextStyle(
                    fontSize: 20.0,
                  )
              ),
            ),
            body: Center(
              child: Container(
                height: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: ()
                        {
                          CounterCubit.get(context).MINUS();
                        },
                        child:Text(
                            'MINUS'
                        )
                    ),
                    Text(
                      '${CounterCubit.get(context).Counter}',
                      style: TextStyle(
                          fontSize:50.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    TextButton(
                        onPressed: ()
                        {
                          CounterCubit.get(context).PLUS();
                        },
                        child:Text(
                            'PLUS'
                        )
                    ),
                  ],
                ),
              ),
            ),
          );
        } ,
      ),
    );
  }
}