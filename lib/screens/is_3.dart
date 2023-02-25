import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IS3 extends StatefulWidget {
  const IS3({super.key});

  @override
  State<IS3> createState() => _IS3State();
}

class _IS3State extends State<IS3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 15, 20),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              "lib/images/Onboarding 3.png",
              fit: BoxFit.cover,
            ),
            height: 500,
            width: 200,
          ),
          Center(
            child: Text(
              "Now investing",
              style: GoogleFonts.poppins(fontSize: 26, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              "made easy",
              style: GoogleFonts.poppins(fontSize: 26, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Discover the best stocks to invest in with ease.",
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              " Let us help you make informed decisions \n                 and grow your portfolio.",
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
