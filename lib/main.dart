import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/TasksScreen.dart';
import 'modals/provider_list.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => TasksProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
