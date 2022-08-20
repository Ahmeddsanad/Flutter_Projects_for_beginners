import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/shared/cubit/cubit.dart';
import 'package:project1/shared/cubit/states.dart';

import '../../shared/component/components.dart';
import '../../shared/component/constants.dart';

class TaskstodoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state) {},
      builder: (context,state){

        var tasks = AppCubit.get(context).NewTasks;

        return ListView.separated(
          itemBuilder: (context, index) => BuildTaskItem(tasks[index],context),
          separatorBuilder: (context ,index) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: tasks.length,
        );
      },

    );
  }
}
