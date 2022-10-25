import 'package:flutter/material.dart';

//Create a new task inside the ListView
class Task extends StatefulWidget {
  Task(this.taskText, this.taskReward, {super.key});

  String taskText;
  String taskReward;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  Color colorFondo = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.taskText = '';
          colorFondo = Colors.orangeAccent.shade100;
          widget.taskReward = '';
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0),
        decoration: BoxDecoration(
          color: colorFondo,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              widget.taskText,
              style: TextStyle(
                fontSize: 18.0,
              ),
            )),
            CircleAvatar(
              radius: 27.5,
              child: Text(
                widget.taskReward,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.orangeAccent.shade100,
            ),
          ],
        ),
      ),
    );
  }
}
