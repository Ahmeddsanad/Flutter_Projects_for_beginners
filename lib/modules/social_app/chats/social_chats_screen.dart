import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project1/shared/component/components.dart';

class SocialChats extends StatelessWidget {
  const SocialChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Center(
          child: Text(
            'Social Chat'
          ),
        ),
      ],
    );
  }
}
