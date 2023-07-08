import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project1/layout/social_app/cubit/cubit.dart';
import 'package:project1/layout/social_app/cubit/states.dart';
import 'package:project1/shared/component/components.dart';
import 'package:project1/shared/styles/icon_broken.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    var NameController = TextEditingController();
    var BioController = TextEditingController();

    return BlocConsumer<SocialCubit, SocialAppStates>(
      listener: (context, state) {},
      builder: (context, state) {

        var userModel = SocialCubit.get(context).model;
        File? profileImage = SocialCubit.get(context).profileImage;
        File? CoverImage = SocialCubit.get(context).CoverImage;

        NameController.text = userModel!.name!;
        BioController.text = userModel.bio!;

        return Scaffold(
          appBar: DefaultAppBar(
            context: context,
            title: 'Edit Profile',
            action: [
              DefaultTextButton(
                text: 'Update',
                function: (){},
              ),
              const SizedBox(
                width: 15.0,
              )
            ],

          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 190.0,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children:
                    [
                      Stack(
                        children: [
                          Align(
                            child: Container(
                              height: 140.0,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(
                                      4.0,
                                    ),
                                    topRight: Radius.circular(
                                      4.0,
                                    ),
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        '${userModel.cover}',
                                      ),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            alignment: AlignmentDirectional.topCenter,
                          ),
                          IconButton(
                            icon: const CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 20.0,
                              child: Icon(
                                  IconBroken.Camera,
                                  size: 16.0,
                              ),
                            ),
                            onPressed: ()
                            {
                              SocialCubit.get(context).getCoverImage();
                            },
                          ),
                        ],
                        alignment: AlignmentDirectional.topEnd,
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 64.0,
                            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                            child: CircleAvatar(
                              radius: 60.0,
                              //profileImage == null
                              //                                   ? NetworkImage(userModel!.image.toString())
                              //                                   : FileImage(profileImage),
                              // NetworkImage(userModel.image.toString())
                              // FileImage(profileImage!)
                              backgroundImage: NetworkImage(userModel.image.toString()),
                            ),
                          ),
                          IconButton(
                            icon: const CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.black54,
                              child: Icon(
                                IconBroken.Camera,
                                size: 16.0,
                              ),
                            ),
                            onPressed: (){
                              SocialCubit.get(context).getProfileImage();
                            },
                          ),
                        ],
                        alignment: AlignmentDirectional.bottomEnd,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      DefaultFormField(
                        Controller: NameController,
                        type: TextInputType.name,
                        validated: (String value)
                        {
                          if(value.isEmpty)
                            {
                              return 'name must not be empty';
                            }
                          return null;
                        },
                        label: 'Name',
                        prefix: IconBroken.User,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      DefaultFormField(
                        Controller: BioController,
                        type: TextInputType.text,
                        validated: (String value)
                        {
                          if(value.isEmpty)
                          {
                            return 'Bio must not be empty';
                          }
                          return null;
                        },
                        label: 'Bio',
                        prefix: IconBroken.Info_Circle,
                        isBio: true
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
