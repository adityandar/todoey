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
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          name: tasks[index].name,
          isChecked: tasks[index].isDone,
          onChanged: (newValue) {
            setState(() {
              tasks[index].toggle();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
