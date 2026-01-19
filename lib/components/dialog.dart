import 'package:flutter/material.dart';
import 'package:to_do_app/components/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  final TextEditingController controller;
  DialogBox({super.key, required this.onSave, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: SizedBox(
        height: 120,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'New Task',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [MyButton(name: 'Save', onPressed: onSave)],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
