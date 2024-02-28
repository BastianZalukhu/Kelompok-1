import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardRecommended extends StatefulWidget {
  const CardRecommended({super.key});

  @override
  State<CardRecommended> createState() => _CardRecommendedState();
}

class _CardRecommendedState extends State<CardRecommended> {
  var location_recommended = [
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
              height: 160,
              child: ListView.builder(
                itemCount: location_recommended.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Stack(
                      children: [
                        Card(
                          color: Colors.white,
                          elevation: 2,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/gambar${index + 1}.png',
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: 200,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    location_recommended[index],
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: 100,
                          child: Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(0, 30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 3.0,
                                    )),
                                backgroundColor:
                                    Color.fromARGB(255, 77, 86, 82),
                                elevation: 0,
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    "4N/5D",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
