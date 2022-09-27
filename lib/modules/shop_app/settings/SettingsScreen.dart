// ignore_for_file: non_constant_identifier_names, void_checks, unnecessary_null_comparison

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/cubit/cubit.dart';
import 'package:project1/layout/shop_app/cubit/states.dart';
import 'package:project1/modules/shop_app/search/cubit/states.dart';
import 'package:project1/shared/component/components.dart';

class SettingsScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopAppCubit,ShopAppStates>(
      listener: (context, state)
      {
        if(state is ShopAppSuccessSettingsDataState)
        {
          nameController.text  = state.SettingsModel.data?.name;
          emailController.text = state.SettingsModel.data?.email;
          phoneController.text = state.SettingsModel.data?.phone;
        }
      },
      builder: (context, state)
      {

        var cubit = ShopAppCubit.get(context);
        var model = ShopAppCubit.get(context).AllUserData.data;

        nameController.text = model?.name;
        emailController.text = model?.email;
        phoneController.text = model?.phone;

        return ConditionalBuilder(
            condition: cubit.getAllUserData != null,
            builder: (context) => Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        if(state is ShopAppLoadingSearchState)
                        const LinearProgressIndicator(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        DefaultFormField(
                            Controller: nameController,
                            type: TextInputType.name,
                            validated: (value)
                            {
                              if(value?.isEmpty){
                                return 'Name Must not be Empty';
                              }
                              return null;
                            },
                            label: 'Name',
                            prefix: Icons.person,
                            onSubmit: (value){
                              return value;
                            },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        DefaultFormField(
                            Controller: emailController,
                            type: TextInputType.emailAddress,
                            validated: (value)
                            {
                              if(value?.isEmpty){
                                return 'Email Must not be Empty';
                              }
                              return null;
                            },
                            label: 'Email Address',
                            prefix: Icons.email_outlined,
                            onSubmit: (value){
                              return value;
                            },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        DefaultFormField(
                            Controller: phoneController,
                            type: TextInputType.phone,
                            validated: (value)
                            {
                              if(value.isEmpty){
                                return 'Phone Number Must not be Empty';
                              }
                              return null;
                            },
                            label: 'Phone Number',
                            prefix: Icons.numbers,
                            onSubmit: (value){
                              return value;
                            },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        DefaultButton(
                            function: ()
                            {

                              if(formKey.currentState!.validate())
                                {
                                  ShopAppCubit.get(context).UpdateUserData(
                                    name: nameController.text,
                                    email: emailController.text,
                                    phone: phoneController.text,
                                  );
                                }
                            },
                            text: 'UPDATE',
                            background: Colors.teal,
                            radius: 15.0
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        DefaultButton(
                            function: ()
                            {
                              SignOut(context);
                            },
                            text: 'LOGOUT',
                            background: Colors.teal,
                            radius: 15.0
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            fallback: (context) => const Center(child: CircularProgressIndicator(),),
        );
      },
    );
  }
}
