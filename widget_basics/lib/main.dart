import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
// Widget Basics (Container, Column, Row)
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Widget Basics')),
        body: Container(
          color: Colors.grey,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Row(
                // Row Example (like UIStackView horizontal)
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('Box 1')),
               ),
               Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text('Box 2')),
               ),
                 Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(2, 5),
                    ),
                  ],
                ),
                child: Center(child: Text('Box 3')),
               )
              ],
            ),
            SizedBox(height: 20),
             // Column Example (like UIStackView vertical)

            Column(
            
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  height: 80,
                  color: Colors.orange,
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.white),
                      SizedBox(width: 10),
                      Expanded(child: // Like .flexible in SwiftUI
                       Text('Starred Item', 
                       style: TextStyle(color: Colors.white,fontSize: 20)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Flexible(child:  Text('This is a very long text that should wrap within the purple container. It demonstrates the use of Flexible widget in Flutter.', 
                 style: TextStyle(color: Colors.white),)),
                ], 
              )
            )
              // Flexible vs Expanded (like HStack/VStack spacing)
          ],
          ),
          
        ),
      ),
    );
  }
}
