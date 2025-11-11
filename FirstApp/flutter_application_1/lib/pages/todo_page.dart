import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  TextEditingController mycontroller = TextEditingController();
  void greeUser() {
    print(mycontroller.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        Center(
          child: Column(
            children: [
              TextField(controller: mycontroller),
              //Button
              ElevatedButton(onPressed: greeUser, child: Text("Tap"))
            ],
          ),
        )

    );
  }
}