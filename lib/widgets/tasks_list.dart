import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, index) {
            return TaskTile(
                tasktitle: taskdata.tasks[index].name,
                isChecked: taskdata.tasks[index].isDone,
                checkBoxCallBack: (checkBoxState) {
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                });
          },
          itemCount: taskdata.tasks.length,
        );
      },
    );
  }
}
