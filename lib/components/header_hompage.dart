import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderHomePage extends StatefulWidget {
  const HeaderHomePage({super.key});

  @override
  State<HeaderHomePage> createState() => _HeaderHomePageState();
}

class _HeaderHomePageState extends State<HeaderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: 'Explore\n',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
                text: 'Aspen',
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black))
          ])),
        ),
        Container(
          child: Row(
            children: const [
              Icon(
                Icons.location_on,
                color: Colors.blue,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  'Aspen, USA',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ],
    );
  }
}
