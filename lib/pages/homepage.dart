import 'package:flutter/material.dart';
import 'package:ASPEN_FGD_1/components/card_popular.dart';
import 'package:ASPEN_FGD_1/components/card_recommended.dart';
import 'package:ASPEN_FGD_1/components/category_homepage.dart';
import 'package:ASPEN_FGD_1/components/header_hompage.dart';
import 'package:ASPEN_FGD_1/components/navbar.dart';
import 'package:ASPEN_FGD_1/components/search_homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                HeaderHomePage(),
                SizedBox(height: 20),
                SearchHomePage(),
                SizedBox(height: 20),
                CategoryHomePage(),
                SizedBox(height: 20),
                Expanded(
                    child: SingleChildScrollView(
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text(
                          'Popular',
                          style: GoogleFonts.montserrat(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        CardPopular(),
                        SizedBox(height: 20),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Recommended',
                                style: GoogleFonts.montserrat(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        CardRecommended(),
                      ],
                    ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
