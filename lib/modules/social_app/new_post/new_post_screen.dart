import 'package:flutter/material.dart';
import 'package:project1/shared/component/components.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(
          context: context,
          title: 'Add Post',
          ),
    );
  }
}
