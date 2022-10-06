import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/social_app/social_layout.dart';
import 'package:project1/modules/social_app/social_login/cubit/cubit.dart';
import 'package:project1/modules/social_app/social_login/cubit/states.dart';
import 'package:project1/modules/social_app/social_register/social_register_screen.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/network/local/cache_helper.dart';

// ignore: must_be_immutable
class SocialLoginScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();

  // ignore: non_constant_identifier_names
  var EmailController = TextEditingController();
  // ignore: non_constant_identifier_names
  var PasswordController = TextEditingController();

  SocialLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SocialLoginCubit(),
      child: BlocConsumer<SocialLoginCubit,SocialAppLoginStates>(
        listener: (context, state)
        {
          if(state is SocialLoginErrorState)
            {
              showToast(
                  text: state.error,
                  state: ToastStates.ERROR
              );
            }
          if(state is SocialLoginSuccessState)
          {
            CacheHelper.saveData(
              Key: 'uId',
              value: state.uId,
            ).then((value) => {
              NavigateAndFinish(context,const SocialLayout()),
                  showToast(
                  text: 'Signed Successfully',
                  state: ToastStates.SUCCESS
                  ),
            });

          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
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
                          'Login now to Communicate with friends',
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
                            Suffix: SocialLoginCubit.get(context).suffix,
                            onSubmit: (value)
                            {
                              SocialLoginCubit.get(context).userLogin
                                (
                                email: EmailController.text,
                                password: PasswordController.text,
                              );
                            },
                            isPassword: SocialLoginCubit.get(context).isPassword,
                            suffixPressed: ()
                            {
                              SocialLoginCubit.get(context).changePasswordVisibility();
                            }
                        ), // DefaultFormField
                        const SizedBox(
                          height: 15.0,
                        ),
                        ConditionalBuilder(
                          condition: state is! SocialLoginLoadingState,
                          builder: (context) => DefaultButton(
                            function: ()
                            {
                              if(formKey.currentState!.validate())
                              {
                                SocialLoginCubit.get(context).userLogin(
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
                                  NavigateTo(context,const RegisterSocialScreen());
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
