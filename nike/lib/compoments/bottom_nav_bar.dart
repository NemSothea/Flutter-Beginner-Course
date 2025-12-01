import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
   
   Function(int)? onTabChange;

  MyBottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
      color: Colors.grey.shade700,
      activeColor: Colors.black,
      tabActiveBorder: Border.all(color: Colors.white),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      tabBorderRadius: 16,
      onTabChange: (value) => onTabChange!(value),
      tabs: 
      [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
   
        GButton(
          icon: Icons.shopping_bag,
          text: 'Bag',
        ),
       
      ]),
    );
  }
}