// ignore_for_file: non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/cubit/cubit.dart';
import 'package:project1/layout/shop_app/cubit/states.dart';
import 'package:project1/models/shop_app/categories_model.dart';
import 'package:project1/models/shop_app/home_model.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/styles/colors.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var cubit = ShopAppCubit.get(context);

    return BlocConsumer<ShopAppCubit,ShopAppStates>(
      listener: (context,state)
      {
        if(state is ShopAppSuccessChangeFavoritesDataState)
          {
            if(state.model.status! == false)
              {
                showToast(
                    text: state.model.message!,
                    state: ToastStates.ERROR,
                );
              }
          }
      },
      builder:  (context,state) {

        return ConditionalBuilder(
          condition: cubit.homeModel != null && cubit.categoriesModel != null,
          builder: (context) => BuilderWidget(cubit.homeModel!,cubit.categoriesModel!, context),
          fallback: (context) => const Center(
            child:CircularProgressIndicator(),
          )
        );
      },
    );
  }

  Widget BuilderWidget(HomeModel model, CategoriesModel categoriesModel, context) => SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        CarouselSlider(
            items: model.data?.banners.map((e) => Image(
                    image: NetworkImage(e.image),
                    width: double.infinity,
                    fit: BoxFit.cover,
                    )).toList(),
            options: CarouselOptions(
              height: 200.0,
              initialPage: 0,
              viewportFraction: 1.0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              scrollDirection: Axis.horizontal,
            )
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => BuildCategoryItem(categoriesModel.data!.data[index]),
                    separatorBuilder: (context, index) => const SizedBox( width: 10.0,),
                    itemCount: categoriesModel.data!.data.length,
                    // itemCount: categoriesModel.data!.data!.length,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'New Products',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.grey[300],
          child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
              shrinkWrap: true,
              childAspectRatio: 1 / 1.821,
              physics: const NeverScrollableScrollPhysics(),
              children:
                List.generate(
                    model.data!.products.length,
                    (index) => BuildGridProduct(model.data!.products[index],context))
          ),
        ),
      ],
    ),
  );

  Widget BuildGridProduct(ProductsModel model, context) => Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Image(
              image: NetworkImage(model.image),
              width: double.infinity,
              height: 200.0,
              // fit: BoxFit.cover,
            ),
            if(model.discount != 0)
            Container(
              color: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: const Text(
                'DISCOUNT',
                style: TextStyle(
                  fontSize: 8.0,
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                model.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14.0,
                  height: 1.3
                ),
              ),
              Row(
                children: [
                  Text(
                    '${model.price.round()}',
                    style: const TextStyle(
                        color: defaultColor,
                        fontSize: 12.0,
                        height: 1.3
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  if(model.discount != 0)
                  Text(
                    '${model.OldPrice}',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                        height: 1.3,
                        decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: ()
                      {
                        ShopAppCubit.get(context).ChangeFAVORITES(model.id);
                        print(model.id);
                      },
                      icon: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: ShopAppCubit.get(context).favorites[model.id]! ? defaultColor : Colors.grey,
                        child: const Icon(
                          Icons.favorite_border,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget BuildCategoryItem(DataModel model) => Stack(
    alignment: Alignment.bottomCenter,
    children:
    [
      Image(
        image: NetworkImage(model.image!),
        height: 100.0,
        width: 100.0,
        fit: BoxFit.cover,
      ),
      Container(
        width: 100.0,
        color: Colors.black.withOpacity(0.8,),
        child: Text(
          model.name!,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
