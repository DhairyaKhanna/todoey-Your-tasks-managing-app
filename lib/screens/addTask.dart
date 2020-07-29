import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/provider_list.dart';
import 'package:todoey/widgets/Task_tile.dart';

class AddTask extends StatefulWidget {
  AddTask({this.newTask});

  final Function newTask;

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  var newTassk;

  var textvalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Text(
                'Add Tasks',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              TextField(
                autofocus: true,
                onChanged: (value) {
                  newTassk = value;
                  textvalue = newTassk;
                  Provider.of<TasksProvider>(context)
                      .onNewTask(textvalue, false);
                },
                textAlign: TextAlign.center,
                cursorColor: Colors.blue,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 60,
                child: FlatButton(
                  child: Text('Add'),
                  textTheme: ButtonTextTheme.accent,
                  onPressed: () {
                    print(textvalue);
                    widget.newTask(newTassk ?? 'Dummy Text');
                    Navigator.pop(context);
                  },
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
