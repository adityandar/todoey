import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;

  TaskTile({@required this.name, @required this.isChecked});

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
//      onChanged: onChanged,
      ),
    );
  }
}

//(newValue) {
//setState(
//() {
//isChecked = newValue;
//},
//);

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function onChanged;

  TaskCheckbox({this.checkboxState, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: onChanged,
    );
  }
}
