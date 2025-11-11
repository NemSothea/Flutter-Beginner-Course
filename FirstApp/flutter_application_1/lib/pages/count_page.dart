import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key});

  @override
  State<CountPage> createState() => _CountPage();

}
class _CountPage extends State<CountPage> {
  
  //Variable
  int _counter = 0;

  //Method
  void _increment() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Message
            Text("Tap push to increase the value"),
            // Counter value
            Text(
              _counter.toString(),
                style: TextStyle(
                fontSize: 40)
                
            ),
            //Botton
            ElevatedButton(
              onPressed: 
            _increment, child: Text("Increment"))
          ],
        ),
      ),
    );
  }

}