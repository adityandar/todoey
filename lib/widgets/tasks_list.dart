import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          name: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          onChanged: (newValue) {
            setState(() {
              widget.tasks[index].toggle();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
