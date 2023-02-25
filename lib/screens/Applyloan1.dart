import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Homepage1.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

import 'is_5.dart';

class Loan1 extends StatefulWidget {
  const Loan1({super.key});

  @override
  State<Loan1> createState() => _Loan1State();
}

class _Loan1State extends State<Loan1> {
  Future<void> _showSimpleDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            // <-- SEE HERE
            title: const Text('Congrats!'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Loan Request succefully generated'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(Hom());
                  },
                  child: Text("Exit",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white)),
                ),
              ),
            ],
          );
        });
  }

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
                    "Tell us about your business",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Why do you want loan ?",
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
                    "Add adress",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Adress line 1",
                    hintStyle: GoogleFonts.montserrat(
                        color: Color.fromARGB(255, 130, 130, 130)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 2, color: Color.fromARGB(255, 0, 0, 0)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 10),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Adress line 2",
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
                    "Annual revenue:",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter amount",
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
                    "Last 3 months revenue:",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter amount",
                    hintStyle: GoogleFonts.montserrat(
                        color: Color.fromARGB(255, 130, 130, 130)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 2, color: Color.fromARGB(255, 0, 0, 0)))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _showSimpleDialog,
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
