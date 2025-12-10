import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snekcart/components/shoetile.dart';
import 'package:snekcart/model/shoeclass.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {

  // ---- LIST OF SHOES ----
  final List<Shoeclass> shoes = [
    Shoeclass(
      name: "NIKE Thunder",
      price: "3000 INR",
      description: "Nike black shoes",
      imagepath: "lib/assets/blackshoes.png",
    ),
    Shoeclass(
      name: "NIKE Leaf",
      price: "2800 INR",
      description: "Nike green shoes",
      imagepath: "lib/assets/greenshoes.png",
    ),
    Shoeclass(
      name: "NIKE Blaze",
      price: "3200 INR",
      description: "Nike orange shoes",
      imagepath: "lib/assets/orangeshoes.png",
    ),
    Shoeclass(
      name: "NIKE Pure",
      price: "2900 INR",
      description: "Nike white shoes",
      imagepath: "lib/assets/whiteshoes.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Search (just UI)
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
        ),

        // Message text
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Everyone flies. Some fly longer than others.",
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Colors.grey[400],
            ),
          ),
        ),

        // Hot Picks heading
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "HOT Picks 🔥",
                style: GoogleFonts.orbitron(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "see all",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
        ),

        // ---- SHOES LIST ----
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: shoes.length,
            itemBuilder: (context, index) {
              return Shoetile(shoe: shoes[index]);
            },
          ),
        ),

        Divider(color: Colors.grey[200]),
      ],
    );
  }
}
