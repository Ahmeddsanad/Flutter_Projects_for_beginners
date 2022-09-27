// ignore_for_file: non_constant_identifier_names

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/Shop_Layout.dart';
import 'package:project1/layout/shop_app/cubit/cubit.dart';
import 'package:project1/modules/shop_app/login/cubit/cubit.dart';
import 'package:project1/modules/shop_app/register/cubit/cubit.dart';
import 'package:project1/modules/shop_app/register/cubit/states.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/component/constants.dart';
import 'package:project1/shared/network/local/cache_helper.dart';

class RegisterShopScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var formKey = GlobalKey<FormState>();

    var nameController = TextEditingController();
    var EmailController = TextEditingController();
    var PasswordController = TextEditingController();
    var phoneController = TextEditingController();

    return BlocConsumer<ShopRegisterCubit,ShopAppRegisterStates>(
      listener: (context, state)
      {
        if(state is ShopRegisterSuccessState)
        {

          if(state.loginModel.status!)
          {
            print(state.loginModel.message);
            print(state.loginModel.data!.token);

            CacheHelper.saveData(
              Key: 'token',
              value: state.loginModel.data!.token,
            ).then((value)
            {

              // token = state.loginModel.data!.token;

              NavigateAndFinish(
                context,
                const ShopLayout(),
              );
            });
          }
          else
          {
            print(state.loginModel.message);

            showToast(
                text: state.loginModel.message!,
                state: ToastStates.ERROR
            );
          }
        }
      },
      builder: (context, state) {

        var Cubit = ShopRegisterCubit.get(context);

        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'REGISTER',
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.black
                        ),
                      ),
                      Text(
                        'Register now to browse our hot offers',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.grey
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      DefaultFormField(
                          Controller: nameController,
                          type: TextInputType.name,
                          validated: (value)
                          {
                            if(value.isEmpty){
                              return 'Name Must Not Be Empty';
                            }
                            return null;
                          },
                          label: 'UserName',
                          prefix: Icons.person,
                          isBorder: false,
                          Border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          onSubmit:(value)
                          {

                          }
                      ), // DefaultFormField
                      const SizedBox(
                        height: 15.0,
                      ),
                      DefaultFormField(
                          Controller: EmailController,
                          type: TextInputType.emailAddress,
                          validated: (value)
                          {
                            if(value.isEmpty){
                              return 'Email Address Must Not Be Empty';
                            }
                            return null;
                          },
                          label: 'Email Address',
                          prefix: Icons.email_outlined,
                          isBorder: false,
                          Border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          onSubmit:(value)
                          {

                          }
                      ), // DefaultFormField
                      const SizedBox(
                        height: 15.0,
                      ),
                      DefaultFormField(
                          Controller: PasswordController,
                          type: TextInputType.visiblePassword,
                          validated: (value)
                          {
                            if(value.isEmpty){
                              return 'Password Must Not Be Empty';
                            }
                            return null;
                          },
                          label: 'Password',
                          prefix: Icons.lock_outline,
                          isBorder: false,
                          Border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          Suffix: Cubit.suffix,
                          onSubmit: (value)
                          {

                          },
                          isPassword: Cubit.isPassword,
                          suffixPressed: ()
                          {
                            Cubit.changePasswordVisibility();
                          }
                      ), // DefaultFormField
                      const SizedBox(
                        height: 15.0,
                      ),
                      DefaultFormField(
                          Controller: phoneController,
                          type: TextInputType.phone,
                          validated: (value)
                          {
                            if(value.isEmpty){
                              return 'Phone Number Must Not Be Empty';
                            }
                            return null;
                          },
                          label: 'Phone Number',
                          prefix: Icons.phone,
                          isBorder: false,
                          Border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          onSubmit:(value)
                          {

                          }
                      ), // DefaultFormField
                      const SizedBox(
                        height: 15.0,
                      ),
                      ConditionalBuilder(
                        condition: state is! ShopRegisterLoadingState,
                        builder: (context) => DefaultButton(
                          function: ()
                          {
                            if(formKey.currentState!.validate())
                            {
                              Cubit.userRegister(
                                name: nameController.text,
                                email: EmailController.text,
                                password: PasswordController.text,
                                phone: phoneController.text,
                              );
                            }
                          },
                          text: 'REGISTER',
                          isboxdecorated: false,
                          Decorated: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(40)
                          ),
                        ),
                        fallback: (context) => const Center(child: CircularProgressIndicator()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
