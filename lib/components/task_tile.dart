import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  final String taskText;
  final bool taskCheck;
  Function(bool?)? onChange;

  TaskTile({
    super.key,
    required this.taskText,
    required this.taskCheck,
    required this.onChange,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
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
    );
  }
}
