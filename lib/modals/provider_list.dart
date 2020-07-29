import 'package:flutter/cupertino.dart';
import 'dart:collection';
import 'task.dart';

class TasksProvider extends ChangeNotifier {
  List<Tasks> _tasks = [
    Tasks(name: 'Ask for investment', isDone: false),
    Tasks(name: 'complete todoey', isDone: false),
    Tasks(name: 'do questions', isDone: false)
  ];

  int getLength() => _tasks.length;

  UnmodifiableListView<Tasks> get tasks => UnmodifiableListView(_tasks);

  void onNewTask(String name, bool status) {
    _tasks.add(Tasks(name: name, isDone: status));
    notifyListeners();
  }

  void CheckboxValue(Tasks task) {
    task.isDoneTask();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
