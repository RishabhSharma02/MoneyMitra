import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Applyloan1.dart';
import 'is_5.dart';

class Loan extends StatefulWidget {
  const Loan({super.key});

  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      PhosphorIcons.caretLeft,
                      size: 26.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Text(
                    "Apply loan",
                    style: GoogleFonts.montserrat(
                        fontSize: 26, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20, top: 20, bottom: 10),
                  child: Text(
                    "Get loan with ease for business",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter Loan Amount",
                    hintStyle: GoogleFonts.montserrat(
                        color: Color.fromARGB(255, 130, 130, 130)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 2, color: Color.fromARGB(255, 0, 0, 0)))),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, bottom: 20, left: 20),
                  child: Text(
                    "Enter Duration :",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(Loan1());
              },
              child: Text("Continue",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
