
import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {

  List toDoList = [];

  final _myBox = Hive.box('mybox');

  // create data from database
  void createInitialData() {
    toDoList = [
      ["ex.Watch Movie", true],
      ["ex.Gym", false],
    ];
  }
  // load data from database
  void loadData() async {
    var box = await _myBox;
    toDoList = box.get('TODOLIST'); 
  }
  // update database
  void updateDatabase() async {
    var box = await _myBox;
    box.put('TODOLIST', toDoList);  
  }


}