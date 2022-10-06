// ignore_for_file: argument_type_not_assignable_to_error_handler

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/social_app/cubit/cubit.dart';
import 'package:project1/layout/social_app/cubit/states.dart';
import 'package:project1/shared/component/components.dart';

class SocialLayout extends StatelessWidget {
  const SocialLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit,SocialAppStates>(
      listener: (context,state) {},
      builder: (context,state)
      {

        var Cubit = SocialCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'News Feed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
          ),
          body: ConditionalBuilder(
            condition: SocialCubit.get(context).model != null,
            builder: (context)
            {
              // var model = SocialCubit.get(context).model;

              return Column(
                children: [
                  if(FirebaseAuth.instance.currentUser!.emailVerified)
                  Container(
                    color: Colors.amber.withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0
                      ),
                      child: Row(
                        children:
                        [
                          const Icon(
                              Icons.info_outline
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          const Expanded(
                            child: Text(
                              'Please Verify your Email',
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          DefaultTextButton(
                              function: ()
                              {
                                // final User? user = FirebaseAuth.instance.currentUser;
                                FirebaseAuth.instance.currentUser?.sendEmailVerification().then((value) =>
                                {
                                  showToast(
                                    text: 'check your mail',
                                    state: ToastStates.SUCCESS,
                                  ),
                                });
                                },
                                      text: 'Send'
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
            fallback: (context) =>
            const Center(
                child: CircularProgressIndicator(),
              ),
          )
        );
      },
    );
  }
}
