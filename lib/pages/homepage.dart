import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/header_hompage.dart';
import 'package:flutter_application_3/components/search_homepage.dart';

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
                const SizedBox(height: 20),
                SearchHomePage(),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  child: Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: InkWell(
                            splashColor: Colors.grey,
                            highlightColor: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            onFocusChange: (hasFocus) {},
                            child: const Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Locations'),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: InkWell(
                            splashColor: Colors.grey,
                            highlightColor: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            onFocusChange: (hasFocus) {},
                            child: const Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Hotels'),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: InkWell(
                            splashColor: Colors.grey,
                            highlightColor: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            onFocusChange: (hasFocus) {},
                            child: const Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Food'),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: InkWell(
                            splashColor: Colors.grey,
                            highlightColor: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            onFocusChange: (hasFocus) {},
                            child: const Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Adventure'),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: InkWell(
                            splashColor: Colors.grey,
                            highlightColor: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {},
                            onFocusChange: (hasFocus) {},
                            child: const Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Vacation'),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: Image.asset('assets/gambar4.png'),
                          ),
                          Positioned(
                            top: 160,
                            left: 10,
                            child: Column(children: [
                              Container(
                                margin: EdgeInsets.only(right: 100),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(30, 30),
                                      backgroundColor:
                                          Color.fromARGB(255, 137, 137, 137),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  onPressed: () {},
                                  child: const Text(
                                    'Alley Palace',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Row(
                                  children: [
                                    Container(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size(30, 30),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              backgroundColor: Color.fromARGB(
                                                  255, 137, 137, 137)),
                                          onPressed: () {},
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                size: 20,
                                                color: Colors.amber,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5),
                                                child: Text('4.1',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.white)),
                                              )
                                            ],
                                          )),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 40),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    minimumSize: Size(30, 30),
                                                    shape: CircleBorder(
                                                        side: BorderSide.none),
                                                    backgroundColor:
                                                        Colors.white),
                                                onPressed: () {},
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                  size: 15,
                                                )),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ]),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Image.asset('assets/gambar4.png'),
                                ),
                                Positioned(
                                  top: 160,
                                  left: 10,
                                  child: Column(children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 100),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(30, 30),
                                            backgroundColor: Color.fromARGB(
                                                255, 137, 137, 137),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        onPressed: () {},
                                        child: const Text(
                                          'Alley Palace',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 50),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    minimumSize: Size(30, 30),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15)),
                                                    backgroundColor:
                                                        Color.fromARGB(255, 137,
                                                            137, 137)),
                                                onPressed: () {},
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.star,
                                                      size: 20,
                                                      color: Colors.amber,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text('4.1',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color: Colors
                                                                  .white)),
                                                    )
                                                  ],
                                                )),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40),
                                                  child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              minimumSize: Size(
                                                                  30, 30),
                                                              shape: CircleBorder(
                                                                  side:
                                                                      BorderSide
                                                                          .none),
                                                              backgroundColor:
                                                                  Colors.white),
                                                      onPressed: () {},
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                        size: 15,
                                                      )),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
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
