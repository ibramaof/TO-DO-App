import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  final String taskText;
  final bool taskCheck;
  Function(bool?)? onChange;
  void Function(BuildContext)? deleteTask;

  TaskTile({
    super.key,
    required this.taskText,
    required this.taskCheck,
    required this.onChange,
    required this.deleteTask,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
      child: Slidable(
        key: ValueKey(taskText),
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteTask,
              icon: Icons.delete,
              label: 'Delete',
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              Checkbox(value: taskCheck, onChanged: onChange),
              Text(
                taskText,
                style: TextStyle(
                  fontSize: 20,
                  decoration: taskCheck
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
