import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/cubit/cubit.dart';
import 'package:project1/layout/shop_app/cubit/states.dart';
import 'package:project1/models/shop_app/favorites_model.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/styles/colors.dart';

class FavouriteScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopAppCubit,ShopAppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ShopAppCubit.get(context);

        return ConditionalBuilder(
          condition: state is! ShopAppLoadingFavoritesDataState,
          builder:(context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index) => BuildListProduct(cubit.favoritesModel!.data!.data![index].product!,context),
            separatorBuilder: (context, index) => MyDivider(),
            itemCount: cubit.favoritesModel!.data!.data!.length,
          ),
          fallback: (context) => const Center(child: CircularProgressIndicator(),),
        );
      },
    );
  }


}
