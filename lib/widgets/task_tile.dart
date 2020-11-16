import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function onChanged;
  final Function onLongPress;

  TaskTile(
      {@required this.name,
      @required this.isChecked,
      this.onChanged,
      this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          decoration: (isChecked) ? TextDecoration.lineThrough : null,
          color: (isChecked) ? Colors.black26 : Colors.black,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChanged,
      ),
      onLongPress: onLongPress,
    );
  }
}
