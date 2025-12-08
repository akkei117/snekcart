import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key , required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: GNav(
        onTabChange: (index) => onTabChange!(index),
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
          GButton(
            padding: EdgeInsets.all(20),
            icon: Icons.home_filled,
            text: "Home",
            backgroundColor: Colors.grey[200],
            iconActiveColor: Colors.black,
            iconColor: Colors.grey[600],
            iconSize: 30,
            activeBorder: Border(top: BorderSide(color: Colors.grey ,width: 1)),borderRadius: BorderRadius.circular(10),textSize: 30,
            
          ),

          GButton(
            padding: EdgeInsets.all(20),
            icon: Icons.shopping_bag_rounded,
            text: "Shopping Cart",
            backgroundColor: Colors.grey[200],
            iconActiveColor: Colors.black,
            iconColor: Colors.grey[600],
            iconSize: 30,
            activeBorder: Border(top: BorderSide(color: Colors.grey ,width: 1)),borderRadius: BorderRadius.circular(10),textSize: 30,
          ),
        ],
      ),
    );
  }
}
