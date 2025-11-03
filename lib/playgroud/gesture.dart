import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";

class GesturePractice extends StatefulWidget {
  const GesturePractice({super.key});

  @override
  State<GesturePractice> createState() => _GesturePracticeState();
}

class _GesturePracticeState extends State<GesturePractice> {
  int _currentIndex = 0;

  void navMethod(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  double _height = 100;
  double minHeight = 100;
  double maxHeight = 600;

  void verticalMethod(details) {
    setState(() {
      _height -= details.delta.dy;
      _height = _height.clamp(minHeight, maxHeight);
    });
  }

  bool isClose = false;

  void close() {
    setState(() {
      _height = 50;
      isClose = true;
    });
  }

  void open() {
    setState(() {
      _height = maxHeight;
      isClose = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  height: _height,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: GestureDetector(
                          onVerticalDragUpdate: verticalMethod,
                          behavior: HitTestBehavior.translucent,
                          onTap: () => isClose ? open() : close(),
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 5,
                            color: Colors.transparent,
                            child: Container(
                              height: 5,
                              width: 20,
                              color: Color(0xFF313131),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        color: Color(0xFF313131),
        onTap: navMethod,
        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.access_time, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
      ),
    );
  }
}
