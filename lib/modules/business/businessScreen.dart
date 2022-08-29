import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/news_app/cubit/cubit.dart';
import 'package:project1/layout/news_app/cubit/states.dart';
import 'package:project1/shared/component/components.dart';

class BusinessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppNewsCubit,NewsStates>(
        listener: (context,state){},
        builder: (context,state){

          var list = AppNewsCubit.get(context).Business;

          return ConditionalBuilder(
              condition: state is! AppNewsGetDataLoadingState,
              builder: (context) => ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => BuildArticleItem(list[index]),
                  separatorBuilder: (context,index) => MyDivider(),
                  itemCount: 10,
              ),
              fallback: (context) => Center(child: CircularProgressIndicator())
          );
        },
    );
  }
}
