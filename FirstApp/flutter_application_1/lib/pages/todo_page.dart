import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  TextEditingController mycontroller = TextEditingController();

  String message = "";
  
  void greeUser() {
    setState(() {
      message = "Hello " + mycontroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // Getting user input
                Text(message),
                TextField(
                  controller: mycontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your name"
                  ),
                
                ),
                //Button
                ElevatedButton(onPressed: greeUser, child: Text("Tap"))
              ],
            ),
          ),
        )

    );
  }
}