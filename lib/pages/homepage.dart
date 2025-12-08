import 'package:flutter/material.dart';
import'package:google_nav_bar/google_nav_bar.dart';
import 'package:snekcart/components/bnavbar.dart';
import 'package:snekcart/pages/cartpage.dart';
import 'package:snekcart/pages/shoppage.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //the selcted index which will we used to keep track of the page we are at
  int selectedindex = 0;

  //the list of pages
  final List<Widget> pages =[
    const Shoppage(),
    const Cartpage(),


  ];

  //method to change the the tab
  void navigatebottombar(int index){
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(onTabChange: (index) => navigatebottombar(index)),
      body: pages[selectedindex],
    );
  }
}