import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/cubit/cubit.dart';
import 'package:project1/layout/shop_app/cubit/states.dart';
import 'package:project1/modules/shop_app/search/cubit/cubit.dart';
import 'package:project1/modules/shop_app/search/cubit/states.dart';
import 'package:project1/shared/component/components.dart';

class SearchShopScreen extends StatelessWidget {

  var SearchController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocConsumer<SearchCubit,SearchStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ShopAppCubit.get(context);
          return Scaffold(
            appBar: AppBar(),
            body: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    DefaultFormField(
                      Controller: SearchController,
                      type: TextInputType.text,
                      validated: (value)
                      {
                        if(value.isEmpty){
                          return 'enter text to search';
                        }
                      },
                      label: 'Search',
                      prefix: Icons.search,
                      onSubmit: (text)
                      {
                        SearchCubit.get(context).Search(text);
                      }
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    if(state is ShopAppLoadingSearchState)
                    const LinearProgressIndicator(),
                    const SizedBox(
                      height: 10,
                    ),
                    if(state is ShopAppSuccessSearchState)
                    Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context,index) => BuildListProduct(SearchCubit.get(context).model!.data!.data![index],context, isOldPrice: false),
                        separatorBuilder: (context, index) => MyDivider(),
                        itemCount: SearchCubit.get(context).model!.data!.data!.length,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
