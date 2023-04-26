import 'package:flutter/material.dart';
import '../widgets/tasks_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  const TasksList(this.tasks, {super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toogleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
