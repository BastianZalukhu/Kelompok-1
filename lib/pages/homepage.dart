import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/card_popular.dart';
import 'package:flutter_application_3/components/category_homepage.dart';
import 'package:flutter_application_3/components/header_hompage.dart';
import 'package:flutter_application_3/components/search_homepage.dart';
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
      body: SingleChildScrollView(
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
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular',
                      style: GoogleFonts.montserrat(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CardPopular(),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Recommended',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Column(
                          children: [
                            Container(
                              child: Image.asset('assets/gambar3.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 60),
                              child: Text(
                                'Explore Aspen',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                  child: Image.asset('assets/gambar2.png')),
                              Container(
                                margin: EdgeInsets.only(right: 45),
                                child: Text('Luxurious Aspen',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
