import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'Homepage1.dart';

class IS5 extends StatefulWidget {
  const IS5({super.key});

  @override
  State<IS5> createState() => _IS5State();
}

class _IS5State extends State<IS5> {
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
                    "All is set now, \njust enter PAN card number",
                    style: GoogleFonts.montserrat(
                        fontSize: 22, color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Enter your PAN number",
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
                //GoogleSignIn().signIn();
                Get.to(Hom());
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
