import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/second_page.dart';

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("1st Page"),
    ),
    body: Center(
      child: ElevatedButton(child: Text("Go to second Page",
       style: TextStyle(
        color: Colors.black,
        fontSize: 20
       ),
      )
      ,onPressed: () {
        // Method of push original

        // Navigator.push(context,MaterialPageRoute(
        //   builder: (context) => SecondPage(),
        // ));
      
      // Method of push using route
      Navigator.pushNamed(context, '/secondpage');


      },),
    ),
  );
  }

} 