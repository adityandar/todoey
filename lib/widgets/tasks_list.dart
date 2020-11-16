import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:cool_alert/cool_alert.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                name: task.name,
                isChecked: task.isDone,
                onChanged: (newValue) {
                  taskData.updateCheckbox(task);
                },
                onLongPress: () {
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.warning,
                    confirmBtnColor: Colors.green,
                    confirmBtnText: 'yes',
                    cancelBtnText: 'no',
                    text: "Do you really want to delete this task?",
                    onConfirmBtnTap: () {
                      taskData.deleteTask(task);
                      Navigator.pop(context);
                    },
                    showCancelBtn: true,
                  );
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
