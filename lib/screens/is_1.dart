import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IS1 extends StatefulWidget {
  const IS1({super.key});

  @override
  State<IS1> createState() => _IS1State();
}

class _IS1State extends State<IS1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 15, 20),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              "lib/images/onboarding 1.png",
              fit: BoxFit.fitHeight,
            ),
            height: 500,
            width: 200,
          ),
          Center(
            child: Text(
              "Say Goodbye 👋",
              style: GoogleFonts.poppins(fontSize: 26, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              "to paper documents",
              style: GoogleFonts.poppins(fontSize: 26, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Transform your financial record-keeping with",
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              " our intuitive app interface and \n  rewarding completion goals",
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
