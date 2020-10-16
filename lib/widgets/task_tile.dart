import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function onChanged;

  TaskTile({@required this.name, @required this.isChecked, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            decoration: (isChecked) ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
