import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({super.key});

List names = ["Sothea","Mama","Babe"];

  void onTapped(){
    print("Tap me!");
  }
 
 @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("My App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w500
              ),
            ),
            backgroundColor: Colors.deepPurple,
            elevation: 0,
            leading: Icon(
              Icons.menu,
              color: Colors.white),
              actions: [
                IconButton(onPressed: (){},
                icon: Icon(Icons.logout,
                  color: Colors.white,
                )
                )],
          ),
          body:
            Center(
              child: GestureDetector(
                onTap: onTapped,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.pink,
                  child: Center(
                    child: 
                    Text("Tap me!",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  )
                ),
              ),
            )
            )
          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     //Big stack
          //     Container(
          //       width: 200,
          //       height: 200,
          //       color: Colors.amber.shade100,
          //     ),
          //     //Medium stack
          //        Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.amber.shade200,
          //     ),
          //     //small stack
          //       Container(
          //       width: 50,
          //       height: 50,
          //       color: Colors.amber.shade500,
          //     )
          //   ],
          // )

          // GridView.builder(
          //   itemCount: 5,
          //   gridDelegate: 
          //   // How many one in each row!
          //   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          //   itemBuilder: (context,index) => Container(
          //     color: Colors.amber,
          //     margin: EdgeInsets.all(2),
          //   ))
          
          // ListView.builder(
          //   itemCount: names.length,
          //   itemBuilder:(context,index) => ListTile(
          //     title: Text(names[index])),
          //   ) 
            
          
          /*
          ListView(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber.shade200,
                ),
                 Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber.shade400,
                ),
                 Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber.shade600,
                )
              ],
          )*/
          /*// Column
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 1st box
                Expanded(
                  child: Container(
                    
                    width: 200,
                    color: Colors.amber.shade100,
                  ),
                ),

                // 2st box
                Expanded(
                  child: Container(
                    
                    width: 200,
                    color: Colors.amber.shade300,
                  ),
                ),
                
                // 3st box
                Expanded(
                  child: Container(
                    width: 200,
                    color: Colors.amber.shade500,
                  ),
                )
              ],
          ) */
          /*Center(
            child: Container(
              width: 300,
              height: 300,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
            ),
              padding: EdgeInsets.all(30),
              
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 64,
                ),
              child:
              Text("Flutter Application",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
              ),
            ) ,
          ),
*/
      // ),

    );
  }

}

