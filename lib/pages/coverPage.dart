import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class coverPage extends StatelessWidget {
  const coverPage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Aspen';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            background(image: 'assets/gambar5.png'),
            titleApps(
              titleApp: title,
            ),
            description(
              descriptionApp: 'Plan your',
              descriptionApp2: 'Luxurious',
              descriptionApp3: 'Vacation',
            ),
            buttonCover(
              buttonText: 'Explore',
            ),
          ],
        ),
      ),
    );
  }
}

class titleApps extends StatelessWidget {
  const titleApps({super.key, required this.titleApp});
  final String titleApp;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 100),
      child: Text(
        titleApp,
        style: TextStyle(
          fontFamily: 'Hiatus',
          color: Colors.white,
          fontSize: 110,
          letterSpacing: 9,
        ),
      ),
    );
  }
}

class background extends StatelessWidget {
  const background({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,
    );
  }
}

class description extends StatelessWidget {
  const description(
      {super.key,
      required this.descriptionApp,
      required this.descriptionApp2,
      required this.descriptionApp3});
  final String descriptionApp;
  final String descriptionApp2;
  final String descriptionApp3;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.left,
            descriptionApp,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 50,
            child: Text(
              descriptionApp2,
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            descriptionApp3,
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
      margin: EdgeInsets.only(top: 570, left: 32),
    );
  }
}

class buttonCover extends StatelessWidget {
  const buttonCover({super.key, required this.buttonText});
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 60),
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 52,
        width: 345,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: (Color.fromARGB(255, 23, 111, 242)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
