import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/test.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentIndex = 0;
List<Widget> body = const [
  Icon(Icons.home),
  Icon(Icons.place_outlined),
  Icon(Icons.favorite_border_rounded),
  Icon(Icons.person),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: RichText(
                                text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Explore\n',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                              TextSpan(
                                  text: 'Aspen',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black))
                            ])),
                          ),
                          Container(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  size: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Text('Aspen, USA'),
                                ),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Find things to do',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w800),
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
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                width: 200,
                                height: 270,
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          child:
                                              Image.asset('assets/gambar1.png'),
                                        ),
                                        Positioned(
                                          top: 200,
                                          left: 10,
                                          child: Column(children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 100),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    minimumSize: Size(30, 30),
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 137, 137, 137),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15))),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Apalah()));
                                                },
                                                child: const Text(
                                                  'Coeurdes Alpes',
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
                                              margin:
                                                  EdgeInsets.only(right: 160),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            minimumSize:
                                                                Size(30, 30),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15)),
                                                            backgroundColor:
                                                                Color.fromARGB(
                                                                    255,
                                                                    137,
                                                                    137,
                                                                    137)),
                                                        onPressed: () {},
                                                        child: Row(
                                                          children: const [
                                                            Icon(
                                                              Icons.star,
                                                              size: 20,
                                                              color:
                                                                  Colors.amber,
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 5),
                                                              child: Text('4.5',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      color: Colors
                                                                          .white)),
                                                            )
                                                          ],
                                                        )),
                                                  ),
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
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset('assets/gambar3.png'),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 50, top: 10),
                                      child: Text(
                                        'Explore Aspen',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                    )
                                  ],
                                )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          child: Image.asset(
                                              'assets/gambar2.png')),
                                      Container(
                                        margin: EdgeInsets.only(right: 30),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text('Luxurious Aspen',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18)),
                                        ),
                                      )
                                    ],
                                  ),
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
          ),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                selectedFontSize: 0,
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: '',
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Icon(Icons.place_outlined, color: Colors.blue),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Icon(Icons.favorite, color: Colors.blue),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Icon(Icons.person, color: Colors.blue),
                    ),
                  )
                ],
              ),
            )));
  }
}
