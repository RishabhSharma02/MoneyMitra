import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabs extends StatefulWidget {
  final String number;
  final String name;
  final double change;
  const Tabs(
      {super.key,
      required this.number,
      required this.name,
      required this.change});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 40, 40, 40),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 30),
            child: Text(
              widget.number,
              style: GoogleFonts.montserrat(fontSize: 23, color: Colors.white),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.name,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Color.fromARGB(255, 146, 146, 146),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  widget.change.toString() + "%",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: (widget.change > 0) ? Colors.green : Colors.red,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
