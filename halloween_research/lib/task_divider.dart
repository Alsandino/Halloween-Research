import 'package:flutter/material.dart';

//Insert a line between tasks
class TaskDivider extends StatelessWidget {
  const TaskDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.0,
      color: Colors.black,
      height: 10.0,
      indent: 30.0,
      endIndent: 30.0,
    );
  }
}
