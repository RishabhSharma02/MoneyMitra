import 'package:flutter_application_1/screens/Homepage1.dart';
import 'package:flutter_application_1/screens/logincontroller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset("lib/images/Google.png"),
                  Text(
                    " Sign-in",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
    ;
  }
}
