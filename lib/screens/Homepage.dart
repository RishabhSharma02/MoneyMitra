import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 50.0,
                  autoPlay: true,
                  autoPlayCurve: Curves.easeInOut),
              items: [
                "NIFTY 52626",
                "SENSEX 21212",
                "DOWJ 2121",
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: 238,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration:
                            BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$i ',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, color: Colors.white),
                            ),
                            Icon(
                              PhosphorIcons.caretUpBold,
                              size: 20.0,
                              color: Color.fromARGB(255, 0, 255, 4),
                            ),
                            Text('   $i'.substring(9, 11) + "62",
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 255, 4),
                                )),
                          ],
                        ));
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
