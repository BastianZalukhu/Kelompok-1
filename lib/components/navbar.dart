import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              label: 'Home',
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Location',
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(Icons.airplane_ticket_outlined, color: Colors.blue),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(Icons.favorite_outline, color: Colors.blue),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Person',
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(Icons.person_outline, color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
