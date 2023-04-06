import 'package:flutter/foundation.dart';
import 'package:todo_list_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'buy this'),
    Task(name: 'buy that'),
    Task(name: 'buy those'),
  ];
}