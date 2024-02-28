import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/sub_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPopular extends StatefulWidget {
  const CardPopular({super.key});

  @override
  State<CardPopular> createState() => _CardPopularState();
}

class _CardPopularState extends State<CardPopular> {
  var location = [
    'Alley Place1',
    'Alley Place2',
    'Alley Place3',
    'Alley Place4',
    'Alley Place5',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: 280,
              child: ListView.builder(
                  itemCount: location.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubScreen(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/gambar${index + 1}.png"),
                              fit: BoxFit.cover,
                              opacity: 0.7,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Container(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(10, 30),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            backgroundColor:
                                                Color.fromARGB(255, 77, 86, 82),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            location[index],
                                            style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: Size(10, 30),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor:
                                              Color.fromARGB(255, 77, 86, 82),
                                        ),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: 5,
                                              ),
                                              child: Icon(
                                                Icons.star,
                                                size: 20,
                                                color: Colors.amber,
                                              ),
                                            ),
                                            Text(
                                              '4.1',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, bottom: 10),
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(30, 30),
                                        shape: CircleBorder(
                                          side: BorderSide.none,
                                        ),
                                        backgroundColor: Colors.white),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
