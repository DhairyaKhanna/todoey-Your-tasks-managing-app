class Tasks {
  final String name;
  bool isDone = false;
  Tasks({this.name, this.isDone});

  void isDoneTask() {
    isDone = !isDone;
  }
}
