import 'package:flutter/material.dart';
import 'package:todo/components/my_button.dart';


class DailogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DailogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Text Field
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add New Task',
              ),
            ),
      
            //Button
           Row(
            children: [
            
            MyButton(text: "Save", onPressed: onSave),
            const SizedBox(width: 8,),
            MyButton(text: "Cancel", onPressed: onCancel)

           ],)
          ],
        ),
      ),
    );
  }

}