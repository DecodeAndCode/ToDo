import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final Function (bool ?) checkBoxCallBack;

  //OR
  // final Function checkBoxCallBack;

  const TaskTile({
    super.key,
    required this.isChecked,
    required this.tasktitle,
    required this.checkBoxCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[300],
        value: isChecked,
        onChanged: checkBoxCallBack,

        //OR
        // onChanged: (newValue) {
        //   checkBoxCallBack(newValue);
        // },

      ),
    );
  }
}
