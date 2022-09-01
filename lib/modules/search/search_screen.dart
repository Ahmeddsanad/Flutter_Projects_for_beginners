import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/news_app/cubit/cubit.dart';
import 'package:project1/layout/news_app/cubit/states.dart';
import 'package:project1/shared/component/components.dart';

class SearchScreen extends StatelessWidget {

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppNewsCubit,NewsStates>
      (
        listener: (context, state) {},
        builder:  (context, state) {

          var list = AppNewsCubit.get(context).Search;

          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  DefaultFormField(
                      Controller: searchController,
                      type: TextInputType.text,
                      validated: (value){
                        if(value!.isEmpty){
                          return 'Search Field Must Not Be Empty';
                        }
                        return null;
                      },
                      label: 'Search',
                      prefix: Icons.search,
                      onChange:(value){
                        AppNewsCubit.get(context).getSearch(value);
                      }
                  ),
                  Expanded(child: BuildArticle(list, context))
                ],
              ),
            ),
          );
        },
    )
    ;
  }
}
