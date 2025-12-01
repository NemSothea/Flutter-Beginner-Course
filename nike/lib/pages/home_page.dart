import 'package:flutter/material.dart';
import 'package:nike/compoments/bottom_nav_bar.dart';
import 'package:nike/pages/bag_page.dart';
import 'package:nike/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();  
}

class _HomePageState extends State<HomePage> {
  // selected index for bottom navigation bar
  int _selectedIndex = 0;

  // Handle navigation based on the selected index
  void navigationButtomBar(int index) {
    print("Selected Index: $index");
    
    setState(() {
      _selectedIndex = index;
    });
  }

  // Display Pages based on selected index
  final List<Widget> _pages = [
    // Home Page
    const ShopPage(),
    // Bag Page
    const BagPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(onTabChange: (index) => navigationButtomBar(index),),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            // Header section
            DrawerHeader(
              child: Image.asset('lib/images/nike_logo.jpg'),
            ),
            
            // Main menu items
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.shopping_bag),
                    title: Text('Bag'),
                  ),
                ),
              ],
            ),
            
            // This spacer pushes the logout to the bottom
            const Expanded(
              child: SizedBox(),
            ),
            
            // Logout at the bottom
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.0,
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}