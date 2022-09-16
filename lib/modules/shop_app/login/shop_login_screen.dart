// ignore_for_file: must_be_immutable
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/shop_app/Shop_Layout.dart';
import 'package:project1/modules/shop_app/login/cubit/cubit.dart';
import 'package:project1/modules/shop_app/login/cubit/states.dart';
import 'package:project1/modules/shop_app/register/shop_register_screen.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/network/local/cache_helper.dart';


class ShopLoginScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();

  ShopLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ignore: non_constant_identifier_names
    var EmailController = TextEditingController();
    // ignore: non_constant_identifier_names
    var PasswordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit,ShopAppLoginStates>(
        listener: (context,state)
        {
          if(state is ShopLoginSuccessState)
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
        builder:  (context,state) {

          // ignore: non_constant_identifier_names
          var Cubit = ShopLoginCubit.get(context);

          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Text(
                          'LOGIN',
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.black
                          ),
                        ),
                        Text(
                          'Login now to browse our hot offers',
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.grey
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
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
                                Cubit.userLogin
                                  (
                                  email: EmailController.text,
                                  password: PasswordController.text,
                                  );
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
                        ConditionalBuilder(
                          condition: state is! ShopLoginLoadingState,
                          builder: (context) => DefaultButton(
                            function: ()
                            {
                              if(formKey.currentState!.validate())
                              {
                                Cubit.userLogin(
                                    email: EmailController.text,
                                    password: PasswordController.text,
                                );
                              }

                            },
                            text: 'LOGIN',
                            isboxdecorated: false,
                            Decorated: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(40)
                            ),
                          ),
                          fallback: (context) => const Center(child: CircularProgressIndicator()),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account yet?',
                            ),
                            DefaultTextButton(
                                text: 'Register',
                                function: ()
                                {
                                  NavigateTo(context, RegisterShopAppScreen());
                                },
                                textStyle: const TextStyle(
                                  color: Colors.teal,
                                  fontSize: 13.0,
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
