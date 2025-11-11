import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/count_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/setting_page.dart';
import 'package:flutter_application_1/pages/todo_page.dart';

class FirstPage extends StatefulWidget{
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  int _selectedIndex = 0; 
  
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //Home page
    // HomePage(),
    
    //CountPage
    // CountPage(),

    // ToDoPage
    TodoPage(),
    
    // Profile
    ProfilePage(),
    //Settting 
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(title: Text("1st Page")),
        body: _pages[_selectedIndex],
        bottomNavigationBar: 
        BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationBottomBar,
          items: [
          // Home
            BottomNavigationBarItem(icon: 
            Icon(Icons.home),
            label: 'Home',
            ),
          // Profile
          BottomNavigationBarItem(icon: 
            Icon(Icons.person),
            label: 'Profile',
            ),
          // Setting
           BottomNavigationBarItem(icon: 
            Icon(Icons.settings),
            label: 'Setting',
            ),
        ]),
  );
  }
} 