import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snekcart/model/shoeclass.dart';

class Shoetile extends StatelessWidget {
  Shoeclass shoe;
  Shoetile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(30),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                shoe.imagepath,
                fit: BoxFit.cover,
                height: 230,
              ),
            ),

            Text(
              shoe.name,
              style: GoogleFonts.orbitron(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Text(shoe.description, style: GoogleFonts.poppins()),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(left: 20, top: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    shoe.price,
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),

                      child: Icon(Icons.add , color: Colors.white, size: 40,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
