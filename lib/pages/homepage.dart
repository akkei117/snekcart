import 'package:flutter/material.dart';

import 'package:snekcart/components/bnavbar.dart';
import 'package:snekcart/pages/cartpage.dart';
import 'package:snekcart/pages/shoppage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

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
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavBar(onTabChange: (index) => navigatebottombar(index)),
      body: pages[selectedindex],
    );
  }
}