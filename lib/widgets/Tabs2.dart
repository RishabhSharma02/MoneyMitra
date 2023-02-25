import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabs2 extends StatefulWidget {
  final String name;
  final int value;
  final int rem;
  final int percent;
  const Tabs2(
      {super.key,
      required this.name,
      required this.value,
      required this.rem,
      required this.percent});

  @override
  State<Tabs2> createState() => _Tabs2State();
}

class _Tabs2State extends State<Tabs2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(children: [
        DefaultTextStyle(
          style: GoogleFonts.montserrat(
              fontSize: 20, color: Color.fromARGB(255, 119, 119, 119)),
          child: Text(widget.name),
        ),
        DefaultTextStyle(
          style: GoogleFonts.montserrat(
              fontSize: 20, color: Color.fromARGB(255, 119, 119, 119)),
          child: Text("₹" + widget.value.toString()),
        ),
        DefaultTextStyle(
          style: GoogleFonts.montserrat(
              fontSize: 20, color: Color.fromARGB(255, 119, 119, 119)),
          child: Text(widget.name),
        ),
      ]),
    );
  }
}
