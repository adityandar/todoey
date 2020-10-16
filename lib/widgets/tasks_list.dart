import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Atta\'s merch.'),
    Task(name: 'Sleep at 10PM.'),
    Task(name: 'Finish your exercises.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          name: tasks[0].name,
          isChecked: tasks[0].isDone,
          onChanged: (newValue) {
            setState(() {
              tasks[0].toggle();
            });
          },
        ),
        TaskTile(
          name: tasks[1].name,
          isChecked: tasks[1].isDone,
          onChanged: (newValue) {
            setState(() {
              tasks[1].toggle();
            });
          },
        ),
        TaskTile(
          name: tasks[2].name,
          isChecked: tasks[2].isDone,
          onChanged: (newValue) {
            setState(() {
              tasks[2].toggle();
            });
          },
        ),
      ],
    );
  }
}
