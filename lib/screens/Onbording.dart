import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Homepage1.dart';
import 'package:flutter_application_1/screens/is_4.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'is_1.dart';
import 'is_2.dart';
import 'is_3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: [IS1(), IS2(), IS3()],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment(0, 0.78),
                child: Row(
                  children: [
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        height: 40,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        color: Color.fromARGB(255, 41, 151, 255),
                        onPressed: () {
                          Get.to(IS4(), transition: Transition.zoom);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
