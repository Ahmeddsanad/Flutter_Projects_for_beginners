// ignore_for_file: argument_type_not_assignable_to_error_handler, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/social_app/cubit/cubit.dart';
import 'package:project1/layout/social_app/cubit/states.dart';
import 'package:project1/modules/social_app/new_post/new_post_screen.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/styles/icon_broken.dart';

class SocialLayout extends StatelessWidget {
  const SocialLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit,SocialAppStates>(
      listener: (context,state)
      {
        if(state is SocialNewPostState)
          NavigateTo(context, NewPostScreen());
      },
      builder: (context,state)
      {

        var Cubit = SocialCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(
              Cubit.Titles[Cubit.currentIndex],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            actions: [
              IconButton(
                onPressed: (){},
                icon: const Icon(
                  IconBroken.Notification
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(
                  IconBroken.Search
                ),
              ),
            ],
          ),
          body: Cubit.Screens[Cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index)
            {
              Cubit.ChangeBottomNav(index);
            },
            currentIndex: Cubit.currentIndex,
            items: const
            [
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Home,
                ),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Chat,
                ),
                label: 'Chat'
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Paper_Upload,
                ),
                label: 'Post'
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Location,
                ),
                label: 'Users'
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Setting,
                ),
                label: 'Settings'
              ),
            ],
          ),
        );
      },
    );
  }
}




//to check that email verification works will but don't use gmail to check it
//this in body
// ConditionalBuilder(
// condition: SocialCubit.get(context).model != null,
// builder: (context)
// {
// // var model = SocialCubit.get(context).model;
//
// return Column(
// children: [
// if(FirebaseAuth.instance.currentUser!.emailVerified)
// Container(
// color: Colors.amber.withOpacity(0.6),
// child: Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20.0
// ),
// child: Row(
// children:
// [
// const Icon(
// Icons.info_outline
// ),
// const SizedBox(
// width: 15.0,
// ),
// const Expanded(
// child: Text(
// 'Please Verify your Email',
// ),
// ),
// const SizedBox(
// width: 20.0,
// ),
// DefaultTextButton(
// function: ()
// {
// // final User? user = FirebaseAuth.instance.currentUser;
// FirebaseAuth.instance.currentUser?.sendEmailVerification().then((value) =>
// {
// showToast(
// text: 'check your mail',
// state: ToastStates.SUCCESS,
// ),
// });
// },
// text: 'Send'
// )
// ],
// ),
// ),
// )
// ],
// );
// },
// fallback: (context) =>
// const Center(
// child: CircularProgressIndicator(),
// ),
// )
