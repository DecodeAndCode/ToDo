import 'package:flutter/material.dart';
import 'package:todo_list_app/models/task.dart';
import '../widgets/tasks_list.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: Color(0xff6a6a6a),
      child: Container(
        padding: EdgeInsets.all(45.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.teal[300],
                ),
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff51ada2)),
                  ),
                ),
                onChanged: (value) {
                  newTaskTitle = value;
                },
                autofocus: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[300],
                ),
                onPressed: () {
                  addTaskCallBack(newTaskTitle);
                },
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
