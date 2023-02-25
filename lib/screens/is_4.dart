import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/is_5.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'Homepage1.dart';

class IS4 extends StatefulWidget {
  const IS4({super.key});

  @override
  State<IS4> createState() => _IS4State();
}

class _IS4State extends State<IS4> {
  final bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: Icon(
                    PhosphorIcons.caretLeft,
                    size: 26.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Add your \nphone number",
                    style: GoogleFonts.montserrat(
                        fontSize: 30, color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter your mobile number",
                    hintStyle: GoogleFonts.montserrat(
                        color: Color.fromARGB(255, 130, 130, 130)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 2, color: Colors.white))),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Text(
              "     By continuing ,\n     You agree to allow us to check your\n     credit information with RBI approved credit \n     Bureaus",
              style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(IS5());
              },
              child: Text("Agree and continue",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
