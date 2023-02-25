import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Homepage.dart';
import 'package:flutter_application_1/screens/Homepage1.dart';
import 'package:flutter_application_1/screens/Loginpage.dart';
import 'package:flutter_application_1/screens/Onbording.dart';
import 'package:flutter_application_1/screens/stocks_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
