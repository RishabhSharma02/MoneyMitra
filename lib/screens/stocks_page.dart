import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'Homepage1.dart';

class Stockspage extends StatefulWidget {
  const Stockspage({super.key});

  @override
  State<Stockspage> createState() => _StockspageState();
}

class _StockspageState extends State<Stockspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        selectedIndex: 1,
        tabs: [
          GButton(
              icon: PhosphorIcons.house,
              onPressed: () {
                Get.to(() => Hom());
              }),
          GButton(
            icon: PhosphorIcons.chartLineUp,
            onPressed: () {
              Get.to(() => Stockspage());
            },
          ),
          GButton(
            icon: PhosphorIcons.money,
            onPressed: () {},
          ),
          GButton(
            icon: PhosphorIcons.chats,
            onPressed: () {},
          ),
          GButton(
            icon: PhosphorIcons.sketchLogo,
            onPressed: () {},
          )
        ],
        color: Colors.white,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 125),
            child: Text(
              "SMART         ",
              style: GoogleFonts.montserrat(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 38,
            ),
            child: Text(
              "STOCKING      ",
              style: GoogleFonts.montserrat(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Unleash the power of smarter stock \nselection with effortless research",
                  style:
                      GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Type Company/Brand Name",
                  hintStyle: GoogleFonts.montserrat(
                      color: Color.fromARGB(255, 130, 130, 130)),
                  prefixIcon: Icon(
                    PhosphorIcons.magnifyingGlass,
                    size: 26.0,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 2, color: Colors.white))),
            ),
          )
        ]),
      ),
    );
  }
}
