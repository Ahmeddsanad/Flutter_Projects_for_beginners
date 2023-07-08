// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project1/layout/social_app/cubit/states.dart';
import 'package:project1/models/social_app/social_user_model.dart';
import 'package:project1/modules/social_app/chats/social_chats_screen.dart';
import 'package:project1/modules/social_app/feeds/social_feeds_screen.dart';
import 'package:project1/modules/social_app/new_post/new_post_screen.dart';
import 'package:project1/modules/social_app/settings/social_settings_screen.dart';
import 'package:project1/modules/social_app/users/social_users_screen.dart';
import 'package:project1/shared/component/constants.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;


class SocialCubit extends Cubit<SocialAppStates>
{
  SocialCubit() : super(SocialInitialState());

  static SocialCubit get (context) => BlocProvider.of(context);

  SocialUserModel? model;
  SocialUserModel? m;


  void GetUserData()
  {
    emit(SocialGetUserLoadingState());
    print(uId);
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .get()
        .then((value) =>
    {
          print(value.data()),
          model = SocialUserModel.fromJson(value.data()),
          m = SocialUserModel.fromJson(value.data()),
      emit(SocialGetUserSuccessState()),
    }).catchError((error)
          {
            emit(SocialGetUserErrorState(error.toString()));
            print(error.toString());
          },
        );
  }

  int currentIndex = 0;

  List<Widget> Screens =
  const
  [
    SocialFeeds(),
    SocialChats(),
    NewPostScreen(),
    SocialUsers(),
    SocialSettings(),
  ];

  List<String> Titles =
  const
  [
    'Home',
    'Chat',
    'Post',
    'Users',
    'Settings',
  ];

  void ChangeBottomNav (int index)
  {

    if(index == 2)
      emit(SocialNewPostState());
    else
      {
        currentIndex = index;
        emit(SocialChangeBottomNavState());
      }
  }

  File? profileImage ;
  final picker = ImagePicker();

  Future<void> getProfileImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      print(pickedFile.path);
      emit(SocialProfilePickedSuccessState());
    } else {
      print('No image selected.');
      emit(SocialProfilePickedErrorState());
    }
  }

  File? CoverImage ;

  Future<void> getCoverImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      CoverImage = File(pickedFile.path);
      print(pickedFile.path);
      emit(SocialProfilePickedSuccessState());
    } else {
      print('No image selected.');
      emit(SocialProfilePickedErrorState());
    }
  }

  void UploadProfileImage()
  {
    // firebase_storage.FirebaseStorage.instance.ref().child('users/${}');
  }
  }

