import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/component/components.dart';
import '../../shared/component/constants.dart';

class TaskstodoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => BuildTaskItem(tasks[index]),
        separatorBuilder: (context ,index) => Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[300],
        ),
        itemCount: tasks.length,
    );
  }
}
