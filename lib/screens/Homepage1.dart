import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter_application_1/screens/Applyloan.dart';
import 'package:flutter_application_1/screens/credit_card_page.dart';
import 'package:flutter_application_1/screens/logincontroller.dart';
import 'package:flutter_application_1/screens/stocks_page.dart';
import 'package:flutter_application_1/widgets/Tabs.dart';
import 'package:flutter_application_1/widgets/Tabs2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../variables.dart';

class Hom extends StatefulWidget {
  const Hom({super.key});

  @override
  State<Hom> createState() => _HomState();
}

class _HomState extends State<Hom> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          bottomNavigationBar: GNav(
            selectedIndex: 0,
            tabs: [
              GButton(
                icon: PhosphorIcons.house,
                onPressed: () {},
              ),
              GButton(
                icon: PhosphorIcons.chartLineUp,
                onPressed: () {
                  Get.to(() => Stockspage());
                },
              ),
              GButton(
                icon: PhosphorIcons.money,
                onPressed: () {
                  Get.to(Loan());
                },
              ),
              GButton(
                icon: PhosphorIcons.chats,
                onPressed: () {},
              ),
              GButton(
                icon: PhosphorIcons.sketchLogo,
                onPressed: () {},
              )
            ],
            color: Color.fromARGB(255, 0, 0, 0),
            backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 400,
                  height: 500,
                  child: ContainedTabBarView(
                    tabs: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Savings",
                              style: GoogleFonts.montserrat(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Your cards",
                              style: GoogleFonts.montserrat(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                    views: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "₹",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white, fontSize: 26),
                                  ),
                                ),
                                Text(
                                  (tapped == true) ? "2,76,545" : "Balance",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 41),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  PhosphorIcons.arrowsClockwise,
                                  size: 32.0,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      tapped = !tapped;
                                    });
                                  },
                                  child: Icon(
                                    (tapped == false)
                                        ? PhosphorIcons.eyeClosed
                                        : PhosphorIcons.eye,
                                    size: 26.0,
                                    color: Colors.blue,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 53, top: 10),
                                  child: Text(
                                    "Total Savings made",
                                    style: GoogleFonts.montserrat(
                                        color: Color.fromARGB(255, 66, 66, 66),
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Tabs(
                                    number: "63%",
                                    name: "Mutual\nfunds",
                                    change: 2),
                                Tabs(
                                    number: "10%",
                                    name: "Share\nstocks",
                                    change: -3.2),
                                Tabs(
                                    number: "27%",
                                    name: "Post\noffice",
                                    change: -5.2)
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(children: [
                                    Icon(PhosphorIcons.arrowLineDown,
                                        size: 32.0, color: Colors.white),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Cash-in",
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 146, 146, 146)),
                                    )
                                  ]),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent,
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(children: [
                                    Icon(
                                      PhosphorIcons.money,
                                      size: 32.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Counts",
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 146, 146, 146)),
                                    )
                                  ]),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent,
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(children: [
                                    Icon(
                                      PhosphorIcons.arrowLineUp,
                                      size: 32.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Cash-out",
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 146, 146, 146)),
                                    )
                                  ]),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      CreditCardsPage(),
                    ],
                    onChange: (index) => print(index),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 1.7,
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 27.0, top: 6),
                        child: DefaultTextStyle(
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Color.fromARGB(255, 119, 119, 119)),
                          child: Text('Statistics'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 142, 142, 142)),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("To recieve"),
                                ),
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("₹2711"),
                                ),
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("2131 remaining"),
                                ),
                                Center(
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 120.0,
                                    lineHeight: 6.0,
                                    percent: 0.8,
                                    backgroundColor: Colors.grey,
                                    progressColor: Colors.blue,
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 142, 142, 142)),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("To pay"),
                                ),
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("₹20211"),
                                ),
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("2131 remaining"),
                                ),
                                Center(
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 120.0,
                                    lineHeight: 6.0,
                                    percent: 0.8,
                                    backgroundColor: Colors.grey,
                                    progressColor: Colors.blue,
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 148, 148, 148)),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("Rewards"),
                                ),
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("₹531"),
                                ),
                                DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text("211 remaining"),
                                ),
                                Center(
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(20),
                                    width: 120.0,
                                    lineHeight: 6.0,
                                    percent: 0.8,
                                    backgroundColor: Colors.grey,
                                    progressColor: Colors.blue,
                                  ),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, top: 6),
                        child: DefaultTextStyle(
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Color.fromARGB(255, 119, 119, 119)),
                          child: Text('Latest activity'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Container(
                          child: Icon(
                            PhosphorIcons.coins,
                            size: 26.0,
                          ),
                          // child: SvgPicture.asset(
                          //   "lib/images/l1.svg",
                          //   fit: BoxFit.cover,
                          // ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.brown),
                        ),
                      ),
                      Column(
                        children: [
                          DefaultTextStyle(
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            child: Text('Yayy! your loan is approved'),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DefaultTextStyle(
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  child: Text(
                                      "Check details                                               "),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
