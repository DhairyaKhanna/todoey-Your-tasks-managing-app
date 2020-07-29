import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/provider_list.dart';
import 'Task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(builder: (context, taskProvider, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return Tasktile(
            title: taskProvider.tasks[index].name,
            isChecked: taskProvider.tasks[index].isDone,
            checkboxValue: (value) {
              taskProvider.CheckboxValue(taskProvider.tasks[index]);
            },
            longPress: () {
              taskProvider.deleteTask(taskProvider.tasks[index]);
            },
          );
        },
        itemCount: taskProvider.getLength(),
      );
    });
  }
}
