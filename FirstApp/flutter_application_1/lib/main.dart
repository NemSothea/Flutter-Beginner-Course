import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});

 int sum(int a, int b) {
  return a + b;
 }
 
 List <String> names = [
  "Sothea",
  "Mama",
  "Borey"
 ];

 void printName() {
  for (int i = 0;i < names.length;i++) {
    print(names[i]);
  }
 }
 
 @override
  Widget build(BuildContext context) {
   print(printName);
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(),

    );
  }

}

