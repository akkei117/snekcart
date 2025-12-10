import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snekcart/pages/homepage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(
                "lib/assets/logo.png",
                alignment: AlignmentGeometry.center,
              ),
            ),
          ),
          SizedBox(height: 100),
          Padding(
            padding: EdgeInsetsGeometry.all(1),
            child: Text(
              "Just Do it",
              style: GoogleFonts.orbitron(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Text(
              "Brand new sneakers and custom kicks made with premimum quality",
              style: GoogleFonts.aBeeZee(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => Homepage()),
                );
              },
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(15),
                  child: Text(
                    "Shop Now",
                    style: GoogleFonts.bebasNeue(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
