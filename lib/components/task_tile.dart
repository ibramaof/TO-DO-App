import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
      child: Container(
        decoration: BoxDecoration(color: Colors.yellow),
        padding: EdgeInsets.all(25),
        child: Text("First Task"),
      ),
    );
  }
}
