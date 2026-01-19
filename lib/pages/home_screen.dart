import 'package:flutter/material.dart';
import 'package:to_do_app/components/dialog.dart';
import 'package:to_do_app/components/task_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List todoList = [
    ['First Task', false],
    ['Second Task', false],
    ['Third Task', false],
  ];
  void onChange(bool? value, index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow,
        centerTitle: false,
        title: Text(
          'TO DO',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,

        onPressed: () {
          createNewTask();
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskText: todoList[index][0],
            taskCheck: todoList[index][1],
            onChange: (value) => onChange(value, index),
          );
        },
      ),
    );
  }
}
