import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/provider_list.dart';

class Tasktile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxValue;
  final Function longPress;

  Tasktile({this.title, this.isChecked, this.checkboxValue, this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxValue,
      ),
    );
  }
}
