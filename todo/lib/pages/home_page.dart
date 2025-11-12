import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/components/dailog_box.dart';
import 'package:todo/components/todo_tile.dart';
import 'package:todo/data/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _myBox = Hive.box('mybox');

  TodoDatabase db = TodoDatabase();

  @override
  void initState() {
    // if this is the first time ever opening the app, then create default data
     if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      // there already exists data
      db.loadData();  
    }

    super.initState();
   
  }


  final _controller = TextEditingController();

  // Check Box Changed Tap
  void checkBoxChanged(bool? value, int index) {
    print('Checkbox changed at index $index: $value');
    print('Current state before change: ${db.toDoList[index]}');

    setState(() {
      db.toDoList[index][1] = value ?? false;
    });
    db.updateDatabase();

    print('New state after change: ${db.toDoList[index]}');
  }

  // Create New Task
  void createNewTask() {
    print('Create New Task');

    showDialog(
      context: context,
      builder: (context) {
        return DailogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: cancelDialog,
        );
      },
    ).then((_){
   // Clear controller after dialog is closed
      _controller.clear();
    });
  }
  // Cancel dialog
  void cancelDialog() {
      print('Cancel New Task');
    Navigator.of(context).pop();
    _controller.clear();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Save New Task
  void saveNewTask() {
    print('Save New Task');
    setState(() {
      if (_controller.text.isNotEmpty) {
        db.toDoList.add([_controller.text, false]);
      }
    });
    Navigator.of(context).pop();
    _controller.clear();
  }
  // Delete Task
  void deleteTask(int index) {
    print('Delete Task at index $index');
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'To do',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating Action Button Pressed');
          createNewTask();
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            onChanged: (value) {
              if (value != null) {
                checkBoxChanged(value, index);
              }
            },
            onDeleted:(context) => deleteTask(index)
          );
        },
      ),
    );
  }
}
