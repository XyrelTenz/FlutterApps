import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";
import "package:flutter_apps/screen/home_screen.dart";
import "package:flutter_apps/screen/user_screen.dart";
import "package:flutter_apps/screen/about_screen.dart";

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currenIndex = 0;

  final List homescreen = [HomeScreen(), UserScreen(), AboutScreen()];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: homescreen[_currenIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currenIndex,
      //   onTap: (index) => setState(() {
      //     _currenIndex = index;
      //   }),
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.people), label: "User"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: "Settings",
      //     ),
      //   ],
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        color: Colors.white,
        index: _currenIndex,
        onTap: (index) {
          setState(() {
            _currenIndex = index;
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.people),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
